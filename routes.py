from flask import Flask, render_template, g, request, redirect, url_for
import sqlite3
import random
from flask_bootstrap import Bootstrap
from flask import make_response



PATH= 'seats.db'

app = Flask(__name__)
bootstrap = Bootstrap(app)


def open_connection():
    connection = getattr(g, '_connection', None)
    if connection is None:
        connection = g._connection = sqlite3.connect(PATH)
        connection.row_factory = sqlite3.Row
    return connection


def execute_sql(sql, values=(), commit=False, single=False):
    connection = open_connection()
    cursor = connection.execute(sql, values)
    if commit:
        results = connection.commit()
    else:
        results = cursor.fetchone() if single else cursor.fetchall()

    cursor.close()
    return results


@app.teardown_appcontext
def close_connection(exception):
    connection = getattr(g, '_connection', None)
    if connection is not None:
        connection.close()


@app.route("/", methods=['GET', 'POST'])
def index():
    return render_template("index.html")


@app.route("/seats")
@app.route("/seats/<action>/<seat_id>")
def seats(action='', seat_id=0):
    if action == 'assign':
        execute_sql('UPDATE seat SET isOpen = 0 WHERE id = (?)', (seat_id,), commit=True)
    if action == 'unassign':
        execute_sql('UPDATE seat SET isOpen = 1 WHERE id = (?)', (seat_id,), commit=True)

    seats = execute_sql('SELECT * FROM seat ORDER BY row, aisle')
    return render_template("seats.html", seats=seats)


@app.route("/register", methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        password = request.form['password']
        userid = random.randint(1, 500)
        usersids = execute_sql('SELECT id FROM user')

        while userid in usersids:
            userid = random.randint(1, 500)

        execute_sql('insert into user values(?, ?, ?, ?)', (userid, email, password, name), commit=True)
        resp = make_response(redirect('/'))
        resp.set_cookie('userid', str(userid))
        return resp

    return render_template("register.html")


@app.route("/login", methods=['GET', 'POST'])
def login():
    users = execute_sql('SELECT * FROM user')

    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']
        for user in users:
            if user['email'] == email and user['password'] == password:
                resp = make_response(redirect('/'))
                resp.set_cookie('userid', str(user['id']))
                return resp

    return render_template("login.html")


@app.route("/logout", methods=['GET', 'POST'])
def logout():
    resp = make_response(redirect(url_for("login")))
    resp.set_cookie('userid', '0')
    return resp


@app.route("/trip", methods=['GET'])
def trip():
    seats = execute_sql('SELECT * FROM seat ORDER BY row, aisle')
    return render_template("trip.html", seats=seats)


if __name__ == "__main__":
    app.config['TEMPLATES_AUTO_RELOAD'] = True
    app.run(debug=True)
