FROM Ubuntu
RUN apt-get update
RUN apt-get -y install python

RUN pip install flask
RUN pip install flask-mysql

Copy ./opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run 
