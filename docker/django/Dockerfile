FROM python:3.9-buster
WORKDIR /tmp
COPY ./docker/django/requirements.txt .

RUN pip install --upgrade pip --no-cache-dir \
    && pip install -r requirements.txt --no-cache-dir \
    && rm -r /tmp/requirements.txt


WORKDIR /app