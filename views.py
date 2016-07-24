from models import *
from flask import Flask,g, render_template,request,session,redirect,url_for,flash
from werkzeug import secure_filename
import os
import flask
#from flask_mail import Mail, Message
#WTF Form
from flask_wtf import Form
from wtforms import TextField, IntegerField, TextAreaField, SubmitField, RadioField,SelectField,validators, ValidationError
from flask_sijax import sijax
app = Flask(__name__, static_url_path='/static')
ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])
app.config['UPLOAD_FOLDER'] = 'static/images'
@app.route('/')
def index():
	return "HELLO"