2022年1月11日练习django用的
https://docs.djangoproject.com/zh-hans/4.0/intro/tutorial03/
project:mysite
app:polls
有页面 ,访问：
localhost:8081/admin/  admin 12345678
localhost:8081/polls/

跑在uWSGI 服务器上的步骤是：
先安装uwsgi，pip install uwsgi，然后
启动：uwsgi -d --ini uwsgi.ini
启动：uwsgi --ini uwsgi.ini
停止：uwsgi --stop ./master.pid

有容器：
docker run -it -v c:/python:/data -p 8081:80 --name python39 python:3.9 bash
docker run -it --rm -v c:/python:/data -p 8081:80 python:3.9 bash
启动：docker exec -it python39  bash
docker run -it -v c:/python:/data --name worker1 python:3.9 bash

python manage.py runserver 0.0.0.0:80

===============================================
docker build -t python-dev:latest .

docker run --rm -it -p 8081:80 python-dev:latest
docker run -d -p 8081:80 python-dev:latest

docker run -d -P python-dev:latest
docker run -d --name mysite -p 8081:80 python-dev:latest

有页面 ,访问：
localhost:8081/admin/  admin 12345678
localhost:8081/polls/