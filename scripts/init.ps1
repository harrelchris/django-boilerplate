if (!(Test-Path .venv)) {
    python -m venv .venv
    .venv\Scripts\activate
    python -m pip install --upgrade pip
    pip install -r requirements.txt ruff
} else {
    .venv\Scripts\activate
}

if (!(Test-Path .env)) {
    Copy-Item example.env .env
}

if (Test-Path db.sqlite3) {
    Remove-Item db.sqlite3
}

python .\app\manage.py makemigrations
python .\app\manage.py migrate
python .\app\manage.py createsuperuser --noinput --username user --email user@email.com
