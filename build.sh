#!/usr/bin/env bash

set -o errexit  # exit on error

pip install -r requirements.txt

#python manage.py collectstatic --no-input
python manage.py migrate
python manage.py findstatic --verbosity 2 static

if [ "$CREATE_SUPERUSER" = "" ]
then
  echo "nothing"
else
	python manage.py createsuperuser --no-input
fi