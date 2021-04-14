CMD = echo HELLO
PROJECT = project
APP = poll
django:
	@ docker-compose exec django /bin/bash -c "$(CMD)"

django-up:
	@ make django CMD="python manage.py runserver 0.0.0.0:8000"

django-migrate:
	@ make django CMD="python manage.py migrate"

django-make-migrate:
	@ docker-compose rm -s -v db
	@ docker-compose up -d db
	@ make django CMD="python manage.py makemigrations $(APP)"

django-createsuperuser:
	@ make django CMD="python manage.py createsuperuser"

django-shell:
	@ make django CMD="python manage.py shell"