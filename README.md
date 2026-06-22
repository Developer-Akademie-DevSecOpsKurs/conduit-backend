# ![Django DRF Example App](project-logo.png)

> ### Example Django DRF codebase containing real world examples (CRUD, auth, advanced patterns, etc) that adheres to the [RealWorld](https://github.com/gothinkster/realworld-example-apps) API spec.

<a href="https://thinkster.io/tutorials/django-json-api" target="_blank"><img width="454" src="https://raw.githubusercontent.com/gothinkster/realworld/master/media/learn-btn-hr.png" /></a>

This repo is functionality complete — PR's and issues welcome!

## Installation

1. Clone this repository: `git clone git@github.com:gothinkster/productionready-django-api.git`.
2. `cd` into `conduit-backend`: `cd conduit-backend`.
3. Create a new virtual environment: `python -m venv .venv`
4. Activate the environment: `source .venv/bin/activate`
5. Install the dependencies: `pip install -r requirements.txt`
6. Copy the example.env file: `cp .env.example .env`
7. Edit the example.env file: `nano .env`
8. Start a postgres database: `docker run -p 5432:5432 -e POSTGRES_USER=conduit -e POSTGRES_PASSWORD=conduit -e POSTGRES_DB=conduit -v ./conduit-db-data:/var/lib/postgresql/ postgres:latest`
9. Apply migrations: `python manage.py migrate`
10. Run the application: `python manage.py runserver`

