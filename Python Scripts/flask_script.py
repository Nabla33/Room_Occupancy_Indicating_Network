from flask import Flask, render_template, request
from flask_socketio import SocketIO

app = Flask(__name__)
socketio = SocketIO(app)


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        connection_status_colour = str(request.form['connection_status_colour'])
        connection_status = str(request.form['connection_status'])
    else:
        connection_status_colour = 'ff0000'
        connection_status = 'Not Connected'

    print connection_status
    print connection_status_colour

    return render_template('/WebGUI.html',
                           connection_status_colour=connection_status_colour,
                           connection_status=connection_status,
                           read_string='Hello')

@socketio.on('my event')
def handle_my_custom_event(json):
    print('received json: ' + str(json))


if __name__ == '__main__':
    socketio.run(app)

