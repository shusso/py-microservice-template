## Python µService template
Based on http://testdriven.io/part-one-getting-started/
### Stack
* python3.x
* flask
* Docker (compose)


### Usage
#### Local
```
source activate_venv.sh
python manage.py runserver
```

#### Docker compose
```
docker-compose up -d --build
curl localhost:5001/ping

# create db
docker-compose run template-service python manage.py recreate_db
...
docker-compose down
```
