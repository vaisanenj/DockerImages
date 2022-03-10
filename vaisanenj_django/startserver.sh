#!/bin/bash

#Go to right directory
cd /usr/src/app/


#Start Django server
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000