# Logs

## NGINX

```shell
systemctl status nginx
journalctl -u nginx.service
tail /var/log/nginx/access.log
tail /var/log/nginx/error.log
```

## Gunicorn

```shell
systemctl status gunicorn.socket
journalctl -u gunicorn.socket
journalctl -u gunicorn.service
```

## Postgres

```shell
tail /var/log/postgresql/postgresql-1*-main.log
```

## Timers

```shell
systemctl list-timers
systemctl --type=timer --all --failed

systemctl status example.timer
journalctl -u example.timer
```

## SSH

```shell
tail /var/log/auth.log
```
