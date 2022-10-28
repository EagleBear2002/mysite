FROM python:3.9

LABEL maintainer "tzs919@163.com"

RUN mkdir -p /home/docker/code/app \
    && mkdir -p /root/.pip

WORKDIR /home/docker/code/app

COPY requirements.txt .

COPY pip.conf /root/.pip/

RUN pip install -r requirements.txt

COPY . .

CMD ["uwsgi","--ini","uwsgi.ini"]
