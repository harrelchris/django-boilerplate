#!/usr/bin/env bash

apt install python3-venv -y

python3 -m venv /srv/web/.venv

/srv/web/.venv/bin/python3 -m pip install -r /srv/web/requirements.txt

/srv/web/.venv/bin/python3 /srv/web/app/manage.py collectstatic --noinput
/srv/web/.venv/bin/python3 /srv/web/app/manage.py migrate --noinput
