## Python µService template
Based on http://testdriven.io/part-one-getting-started/
### Stack
* python3.x
* flask
* Docker (compose)


### Usage
#### Local
```
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt
python manage.py runserver
```

#### Docker compose
```
docker-compose up -d
curl localhost:5001/ping
...
docker-compose down
```
