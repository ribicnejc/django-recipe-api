# Commands
* docker build .
* docker-compose build


## create django architecture
    docker-compose run app sh -c "django-admin.py startproject app ." 

## Run Django tests
    docker-compose run app sh -c "python manage.py test"
    
## Run Django tests with flake8 and remove container
    docker-compose run --rm app sh -c "python manage.py test && flake8"
    
### My Run Django tests
    docker-compose run app sh -c "python app/manage.py test"

### Create core package
``` docker-compose run app sh -c "python manage.py startapp core" ```

## Migrations
### Make migrations
    docker-compose run app sh -c "python manage.py makemigrations core"

## Run application
###### Make sure to add allowed host (IP of docker-toolbox) to settings.py
    docker-compose up
    
## Create super user (/admin)
    docker-compose run app sh -c "python manage.py createsuperuser"


## Create user module (for user endpoints)
    docker-compose run --rm app sh -c "python manage.py startapp user"
    


------
#### Notes to myself:
Projects other files than apps are brown in project because of project structure root setting... change it back to recipe-app-api...
reason was to be same structure as is in dockerimage

When running test in PyCharm: Make sure to open edit configuration, and in env variables
put as key -> DJANGO_SETTINGS_MODULE and as value -> app.settings

Django fw searches for test in files/modules -> tests.py will be executed or tests/test_something.py