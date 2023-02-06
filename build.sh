#!/usr/bin/env bash

set -o errexit  # exit on error

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate

if ["$CREATE_SUPERUSER" == "1" ]
then
  python manage.py createsuperuser --no-input
fi