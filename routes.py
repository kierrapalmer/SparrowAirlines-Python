from flask import Flask, render_template, g, request, redirect, url_for
import sqlite3
import datetime
from flask_bootstrap import Bootstrap

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


@app.route("/seats", methods=['GET', 'POST'])
def seats():
    seats = execute_sql('SELECT * FROM seat')
    return render_template("seats.html", seats=seats)


if __name__ == "__main__":
    app.config['TEMPLATES_AUTO_RELOAD'] = True
    app.run(debug=True)
