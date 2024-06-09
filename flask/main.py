
from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

try:
    conn = mysql.connector.connect(
    host="wordnetFlask.mysql.pythonanywhere-services.com",
    user="wordnetFlask",
    password="Flask9999",
    database="wordnetFlask$wordnet"
    )
    message = "succefully connected"
    mycursor = conn.cursor()

except mysql.connector.Error as e:
    results = ["#"]
    message = "NOT connected"

def add_word (wordU, leng_wordU, level_wordU):
    query = "INSERT INTO userwords (wordU, leng_wordU, level_wordU) VALUES (%s, %s, %s);"
    values = (wordU, leng_wordU, level_wordU)
    mycursor.execute(query, values)
    conn.commit()

@app.route('/', methods = ['GET', 'POST'])
def index():
    if request.method == 'POST':
        wordU = request.form['wordU']
        leng_wordU = request.form['leng_wordU']
        level_wordU = request.form['level_wordU']
        add_word (wordU, leng_wordU, level_wordU)
    mycursor.execute("SELECT * FROM userwords")
    results = mycursor.fetchall()
    return render_template('index.html', message = message, results = results)
