FROM python:3.8.5

RUN mkdir -p /app
WORKDIR /app

ADD ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

ADD . /app

CMD python manage.py runserver -h 0.0.0.0
