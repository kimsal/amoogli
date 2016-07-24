# blog
migrate database:
	connect database in database.py
	python models.py db init
	python models.py db migrate
	python models.py db upgrade








For developer:
https://github.com/flask-admin/flask-admin
http://flask-admin.readthedocs.io/en/latest/introduction/#working-with-the-built-in-templates
---------------------------------------------
#git clone git@github.com:flask-admin/flask-admin.git
//pip install flask-restful
############################################
pip install flaskckeditor
sudo pip install slugify
python models.py db init
sudo pip install flask_sijax
sudo pip install  flask_restful

#migrate database:
python models.py db init
python models.py db migrate
python models.py db upgrade

#admin:
sudo pip install passlib
sudo pip install flask_httpauth

sudo pip install flask_mail


############################################




Url to learn:
http://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-xviii-deployment-on-the-heroku-cloud

ckeditor:
https://github.com/Still-not-satisfied-projects/flask-ckeditor/tree/master/examples/app
+LOGIN: http://codereview.stackexchange.com/questions/110679/simple-login-system-using-python-flask-and-mysql
+password encrypt: http://blog.miguelgrinberg.com/post/restful-authentication-with-flask


NOTE (must delete after it works):
from .forms import CKEditorForm

	@app.route('/ckupload/', methods=['POST', 'OPTIONS'])
	def ckupload():
	    """file/img upload interface"""
	    form = CKEditorForm()
	    response = form.upload(endpoint=app)
	    return response


URL:
	http://flask.pocoo.org/snippets/85/