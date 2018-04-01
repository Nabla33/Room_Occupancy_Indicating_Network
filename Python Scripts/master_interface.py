import requests
import serial
import time
import datetime

port = "COM6"
baud = 115200
ser = serial.Serial(port, baud, timeout=None)

log_file_name = 'logs/log-' + str(datetime.date.today()) + '.txt'

url = 'http://localhost:5000/'

all_nodes_data = {
    0: ['000', 0, datetime.datetime.now(), time.time()], # master node
    1: ['303', 0, datetime.datetime.now(), time.time()],
    2: ['303', 0, datetime.datetime.now(), time.time()],
    3: ['303', 0, datetime.datetime.now(), time.time()],
    4: ['303', 0, datetime.datetime.now(), time.time()]
    # [room_number, state, timestamp, timestamp in Unix format]
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


establish_connection()

print "connection with master established!"

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
        # node_data = [room_number, state, timestamp, timestamp in Unix format]

        node_data[1] = node_state
        node_data[2] = datetime.datetime.now()
        node_data[3] = time.time()

        all_nodes_data[node_number] = node_data

        with open(log_file_name, 'a') as log_file:
            log_file.write('Node number: ' + str(node_number) + ', ' + str(node_data) + '\n')


