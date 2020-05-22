FROM python:3.8-alpine

ADD app.py /app/app.py
ADD requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

WORKDIR /app
CMD gunicorn --bind 0.0.0.0:$PORT app:app