#!/usr/bin/env bash

set -e

cd /srv/web/

git pull

/srv/web/.venv/bin/python3 /srv/web/app/manage.py collectstatic --noinput
/srv/web/.venv/bin/python3 /srv/web/app/manage.py migrate --noinput

systemctl stop gunicorn.socket
systemctl stop gunicorn.service
systemctl stop nginx

systemctl daemon-reload

systemctl start gunicorn.socket
systemctl start gunicorn.service
systemctl start nginx
