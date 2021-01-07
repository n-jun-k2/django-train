CMD = echo HELLO

django:
	@ docker-compose exec django /bin/bash -c "$(CMD)"

django-up:
	@ docker-compose exec django /bin/bash -c "cd $(PROJECT) && python manage.py runserver 0.0.0.0:8000"