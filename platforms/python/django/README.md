# Django

## Requirements

 * pip
 * pipenv


## Installation via pipenv and pip

```
pipenv --three
pipenv shell
```

```
pip installl Django
```

## Create project

```
django-admin startproject sitename
```

## Create an app

```
python ./manage.py startapp appname
```

## Run the project

```
cd sitename
python ./manage.py runserver 8080
```

## Visit the app

```
http://localhost:8000/appname
```

## Visit the admin page

```
http://localhost:8000/admin
```

## Run tests
```
./manage.py tests
```

## Run migrations

```
./manage.py makemigrations 
./manage.py migrate 
```
