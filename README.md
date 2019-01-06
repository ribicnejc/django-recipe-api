# Commands
* docker build .
* docker-compose build


## create django architecture
*  docker-compose run app sh -c "django-admin.py startproject app ." 

## Run Django tests
* docker-compose run app sh -c "python manage.py test"
### My Run Django tests
* docker-compose run app sh -c "python app/manage.py test"