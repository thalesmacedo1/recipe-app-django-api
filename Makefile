createdjangoproject:
	docker-compose run --rm app sh -c "django-admin startproject app ."
lint:
	docker-compose run --rm app sh -c "flake8"
djangotest:
	docker-compose run --rm app sh -c "python manage.py test"

.PHONY: createdjangoproject lint djangotest