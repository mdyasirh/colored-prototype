@echo off
echo Setting up FitLife Time Tracker...
python -m venv venv
call venv\Scripts\activate
pip install -r requirements.txt
python manage.py makemigrations tracker
python manage.py migrate
python manage.py seed
echo Starting server...
python manage.py runserver