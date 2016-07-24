from flask import Flask,g, render_template,request,session,redirect,url_for,flash
from werkzeug import secure_filename
import os
import flask
from flask_mail import Mail, Message
#WTF Form
from flask_wtf import Form
from wtforms import TextField, IntegerField, TextAreaField, SubmitField, RadioField,SelectField,validators, ValidationError
from flask_sijax import sijax
app = Flask(__name__, static_url_path='/static')
@app.route('/')
def index():
    return 'index'
@app.route('/category/<name>')
def category(name):
    return 'category: {}'.format(name)
@app.route('/page/<name>')
def page(name):
    return " Page {}".format(name)
@app.route('single/<slug>')
def single(slug):
    return 'single {}'.format(slug)

if __name__ == '__main__':
    app.run()