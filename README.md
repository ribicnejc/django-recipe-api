# Commands
* docker build .
* docker-compose build


## create django architecture
    docker-compose run app sh -c "django-admin.py startproject app ." 

## Run Django tests
    docker-compose run app sh -c "python manage.py test"
### My Run Django tests
    docker-compose run app sh -c "python app/manage.py test"

### Create core package
``` docker-compose run app sh -c "python manage.py startapp core" ```


------
#### Notes to myself:
Projects other files than apps are brown in project because of project structure root setting... change it back to recipe-app-api...
reason was to be same structure as is in dockerimage

When running test in PyCharm: Make sure to open edit configuration, and in env variables
put as key -> DJANGO_SETTINGS_MODULE and as value -> app.settings

Django fw searches for test in files/modules -> tests.py will be executed or tests/test_something.py