SERVICE=web
DB=db

.PHONY: help up down stop restart build rebuild logs ps shell \
        migrate migrations test superuser collectstatic dbshell clean

help:
	@echo "make up             Start containers"
	@echo "make down           Stop and remove containers"
	@echo "make restart        Restart containers"
	@echo "make build          Build images"
	@echo "make rebuild        Rebuild and start"
	@echo "make logs           Follow Django logs"
	@echo "make ps             Show containers"
	@echo "make shell          Open Django shell"
	@echo "make migrate        Run migrations"
	@echo "make migrations     Create migrations"
	@echo "make test           Run tests"
	@echo "make superuser      Create Django superuser"
	@echo "make dbshell        Open Django DB shell"

up:
	docker compose up -d

down:
	docker compose down

stop:
	docker compose stop

restart:
	docker compose restart

build:
	docker compose build

logs:
	docker compose logs -f $(SERVICE)

ps:
	docker compose ps

shell:
	docker compose exec $(SERVICE) python manage.py shell

migrate:
	docker compose exec $(SERVICE) python manage.py migrate

migrations:
	docker compose exec $(SERVICE) python manage.py makemigrations

test:
	docker compose exec $(SERVICE) python manage.py test

superuser:
	docker compose exec $(SERVICE) python manage.py createsuperuser

collectstatic:
	docker compose exec $(SERVICE) python manage.py collectstatic --noinput

dbshell:
	docker compose exec $(SERVICE) python manage.py dbshell

clean:
	docker compose down --remove-orphans