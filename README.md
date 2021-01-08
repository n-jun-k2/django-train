## Django example

Practice developing with django.

## How to use
```bash
> docker-compose up -d
> make django-up

# Check the following address in your browser
http://localhost:10080/...
```

## Project structure

```bash
## django-admin startproject mysite

mysite/
    ┠ mysite/ # application directory
    ┃    ┠ __init__.py
    ┃    ┠ settings.py
    ┃    ┠ urls.py
    ┃    ┠ asgi.py
    ┃    ┗ wsgi.py
    ┗ manage.py
```

| file name | overview |
| --- | --- |
| ```manage.py``` | Django プロジェクトに対する様々な操作を行うためのコマンドラインユーティリティです｡ |
| ```__init__.py``` | のディレクトリが Python パッケージであることを Python に知らせるための空のファイルです。 |
| ```settings.py``` | Django プロジェクトの設定ファイルです。 |
| ```urls.py``` |  Django プロジェクトの URL 宣言、いうなれば Django サイトにおける「目次」に相当します |
| ```asgi.py``` | プロジェクトを提供する ASGI 互換 Web サーバーのエントリポイント。 |
| ```wsgi.py``` | プロジェクトをサーブするためのWSGI互換Webサーバーとのエントリーポイントです。 |

## How to create project

```bash
# docker image up
> docker-compose up -d

# image login ...
> docker-compose exec django /bin/bash

# create project
> django-admin startproject <project name>

```

## How to create application
You can create an application directory by entering the same directory as manage.py and executing the following command.

```bash
> python manage.py startapp <application name>
```

Execution result

``` bash
# > python manage.py startapp polls
mysite/
    ┠ mysite/ 
    ┃    ┠ __init__.py
    ┃    ┠ # ...
    ┃    ┗ wsgi.py
    ┠ polls/ # new application directory
    ┃    ┠ migrations
    ┃    ┃    ┗ __init__.py
    ┃    ┠ __init__.py
    ┃    ┠ admin.py
    ┃    ┠ apps.py
    ┃    ┠ models.py
    ┃    ┠ tests.py
    ┃    ┗ views.py
    ┗ manage.py
```


## Launch the development server

[runserver reference](https://docs.djangoproject.com/ja/3.0/ref/django-admin/#django-admin-runserver)

default port 8000

```bash
> cd <project directory>
> python manage.py runserver

# Change port number
> python manage.py runserver 8800
```

> In this image, set up a django server with the following command in order to set up a server on the local host.
```bash
> python manage.py runserver 0.0.0.0:8000
```

## Confirmation of django
```
http://localhost:10080/...
```

## Model activation

1. ```<project name>/settings.py``` add the ```<application dir>/app.py``` ```Config``` class to the file.
    ```python
    # settings.py
    INSTALLED_APPS = [
        '<application name>.apps.<Application Name>Config',
        'django.contrib.admin',
        ...
        'django.contrib.staticfiles',
    ]
    ```
2. Execute the following command
    ```bash
    > python manage.py makemigrations <application name>
    ```