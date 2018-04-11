from flask import Flask, render_template, request
from flask_socketio import SocketIO
from threading import Thread

import requests
import serial
import time
import datetime

port = "COM5"
baud = 115200
ser = serial.Serial(port, baud, timeout=None)

log_file_name = 'logs/log-' + str(datetime.date.today()) + '.txt'

app = Flask(__name__)
socketio = SocketIO(app)

all_nodes_data = {
    0: ['000', 0, time.time(), datetime.datetime.now()],  # master node
    1: ['303', 0, time.time(), datetime.datetime.now()],
    2: ['303', 0, time.time(), datetime.datetime.now()],
    3: ['303', 0, time.time(), datetime.datetime.now()],
    4: ['303', 0, time.time(), datetime.datetime.now()],
    # [room_number, state, timestamp in Unix format, timestamp]
}

sample_packet = '000-0\n'

def send_to_master(string):
    if ser.isOpen():
        for char in string:
            # print "Sent character: " + char
            ser.write(char)
    else:
        print "Send-Serial not open!"


def read_from_master(timeout_at=1):
    received = None
    timeout_time = time.clock() + timeout_at
    if ser.isOpen():
        loop_time = time.clock()
        while ser.in_waiting == 0 and loop_time < timeout_time:
            loop_time = time.clock()
        if loop_time > timeout_time:
            pass
            # print "timeout!"
        else:
            received = ser.readline()
            # print "Received: " + received

    else:
        print "Read-Serial not open!"

    return received


def establish_connection():
    while True:
        if ser.in_waiting > 0 :
            received = read_from_master()
            if received == 'Sync\n':
                send_to_master('A')
                break

@app.route('/', methods=['GET', 'POST'])
def index():
    return render_template('/WebGUI.html')


@socketio.on('event_response')
def transmit_to_GUI(data):
    socketio.emit('event_response', data, broadcast=True)
    print "Sent to GUI!: ", data


def read_and_transmit_to_GUI():
    while True:
        received_string = read_from_master()

        if received_string is None:
            continue

        if len(received_string) == len(sample_packet) and received_string[3] == '-':
            node_number, node_state = received_string.split('-')

            print "Node number: " + node_number + ", state: " + node_state

            node_number = int(node_number)
            node_state = int(node_state)

            node_data = all_nodes_data[node_number]
            # node_data = [room_number, state, timestamp in Unix format, timestamp]

            node_data[1] = node_state
            node_data[2] = time.time()
            node_data[3] = datetime.datetime.now()

            all_nodes_data[node_number] = node_data

            transmit_to_GUI(node_data[0:3])

            with open(log_file_name, 'a') as log_file:
                log_file.write('Node number: ' + str(node_number) + ', ' + str(node_data) + '\n')


establish_connection()

print "connection with master established!"


if __name__ == '__main__':
    loop_thread = Thread(target=read_and_transmit_to_GUI)
    loop_thread.setDaemon(True)

    loop_thread.start()

    socketio.run(app)
