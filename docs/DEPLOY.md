# Deploy

## Update

```shell
sudo bash /srv/web/scripts/update.sh
```

## Virtual Machine

Provision a VM and connect via SSH, then:

Update apt

```shell
sudo apt update
sudo apt upgrade -y
```

Install git

```shell
sudo apt install -y git
```

Clone the repository

```shell
sudo git clone https://github.com/harrelchris/django-boilerplate.git /srv/web
```

## Postgres

Run the Postgres script to install and configure a database

```shell
sudo bash /srv/web/scripts/postgres.sh
```

## Web

Create a `.env` file

```shell
sudo nano /srv/web/.env
```

Paste and configure the following:

```dotenv
ALLOWED_HOSTS=*
DATABASE_URL=postgres://www-data:pass@localhost:5432/web
SECRET_KEY=
```

Run the installation script for the web app

```shell
sudo bash /srv/web/scripts/web.sh
```

## Gunicorn

Run the gunicorn script

```shell
sudo bash /srv/web/scripts/gunicorn.sh
```

## NGINX

```shell
sudo bash /srv/web/scripts/nginx.sh
```

## Create Superuser

```shell
/srv/web/.venv/bin/python3 /srv/web/app/manage.py createsuperuser
```
