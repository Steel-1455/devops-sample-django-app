<h1>Party Parrot App</h1>

<img src='media/images/party-parrot.gif' alt='parrot' height="200" width="200">
<br>
<br>
<h3></h3>

Sample Python application on Django with PostgreSQL database.

<h3>Requirements</h3>

____


- django 4.0.1
- Pillow 9.0.0
- psycopg2-binary 2.9.3
- django-prometheus 2.2.0

<h3>Deployment</h3>

____



- install Python 3.8
- install libs 
```shell
      pip3 install -r requirements.txt
```

* Set environment export for variables:
```yaml
      DJANGO_DB_HOST: db
      DJANGO_DB_NAME: app
      DJANGO_DB_USER: worker
      DJANGO_DB_PASS: worker
      DJANGO_DB_PORT: "5432"
      DJANGO_DEBUG: "False"
```


* migrate database:
```shell
python3 manage.py migrate
```

* start application:
```shell
python3 manage.py runserver 0.0.0.0:8000
```
____

1 - Клонируем репозиторий:
```shell
git clone https://github.com/Steel-1455/devops-sample-django-app.git
```
2 - Переходим в папку с проектом
```shell
cd devops-sample-django-app
```
3 - Запускаем приложение с помощью docker-compose
```shell
docker compose up
```
4 - Открываем браузер и вводим в поисковую строку "localhost:8001"
5 - Завершаем работу приложения
```shell
docker compose dowm
```

