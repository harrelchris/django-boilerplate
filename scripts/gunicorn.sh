#!/usr/bin/env bash

cp /srv/web/systemd/gunicorn.service /etc/systemd/system/gunicorn.service
cp /srv/web/systemd/gunicorn.socket /etc/systemd/system/gunicorn.socket

systemctl daemon-reload
systemctl start gunicorn.socket
systemctl enable gunicorn.socket
