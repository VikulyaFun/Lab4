import requests
from flask import Flask, render_template, request
import psycopg2

app = Flask(__name__)
conn = psycopg2.connect(database="service_db",user="postgres",password="271104",host="localhost",port="5432")
cursor = conn.cursor()

@app.route('/login/', methods=['GET'])
def index():
    return render_template('login.html')

@app.route('/login/', methods=['POST'])
def login():
    username = request.form.get('username')
    password = request.form.get('password')
    if username == ('') or password == (''):
        obida='Не оставляй поле пустым, оно расстраивается'
        return render_template('login.html', full_name=obida)
    else:
        cursor.execute("SELECT * FROM service.users WHERE login=%s AND password=%s", (str(username), str(password)))
        records = list(cursor.fetchall())
        print (records, 'meow')
        if not records:
            return render_template('login.html', full_name='Данные пользователя не найдены. Проверьте правильность данных.')
        else:
            return render_template('account.html', full_name=records[0][1], username=records[0][2], password=records[0][3])