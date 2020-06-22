volume:
	docker colume create iniciando-django-pgdata

up:
	docker-compose up

create-project-django:
	docker-compose run app django-admin startproject iniciando_com_django . 

migrate:
	python manage.py migrate

makemigrations:
	python manage.py makemigrations

shell:
	python manage.py shell