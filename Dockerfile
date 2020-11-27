FROM python:3.6.5

ENV PYTHONUNBUFFERED 1

RUN mkdir /django
WORKDIR /django

ADD requirements.txt /django/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ADD . /django/

#CMD python /django/manage.py runserver 0:8080
#CMD gunicorn myproject.wsgi:application --bind 0.0.0.0:8080
#CMD gunicorn myproject.wsgi:application --bind 0.0.0.0:8080