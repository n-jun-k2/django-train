CMD = echo HELLO

django:
	@ docker-compose exec django /bin/bash -c "$(CMD)"