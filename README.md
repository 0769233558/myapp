# Laravel Api Rest

[![Build Status](https://travis-ci.org/Tony133/laravel-api-rest.svg?branch=master)](https://travis-ci.org/Tony133/laravel-api-rest)

Simple example of a REST API with Laravel 9.x

## Install with Composer

```
    $ curl -s http://getcomposer.org/installer | php
    $ php composer.phar install or composer install
```

## Set Environment

```
    $ cp .env.example .env
```

## Set the application key

```
   $ php artisan key:generate
```

## Run migrations and seeds

```
   $ php artisan migrate --seed
```

## Getting with Curl

```
    $ curl -H 'content-type: application/json' -H 'Accept: application/json' -v -X GET http://127.0.0.1:8000/api/books
    $ curl -H 'content-type: application/json' -H 'Accept: application/json' -v -X GET http://127.0.0.1:8000/api/books/:id
    $ curl -H 'content-type: application/json' -H 'Accept: application/json' -v -X POST -d '{"title":"Foo bar","price":"19.99","author":"Foo author","editor":"Foo editor"}' http://127.0.0.1:8000/api/books
    $ curl -H 'content-type: application/json' -H 'Accept: application/json' -v -X PUT -d '{"title":"Foo bar","price":"19.99","author":"Foo author","editor":"Foo editor"}' http://127.0.0.1:8000/api/books/:id
    $ curl -H 'content-type: application/json' -H 'Accept: application/json' -v -X DELETE http://127.0.0.1:8000/api/books/:id
```

## Pagination with Curl

```
    $ curl -H 'content-type: application/json' -H 'Accept: application/json' -v -X GET http://127.0.0.1:8000/api/books?page=:number_page  -H 'Authorization:Basic username:password or email:password'
```

## User Authentication with Curl with middleware auth.basic.username

```
    $ curl -H 'content-type: application/json' -H 'Accept: application/json' -v -X GET http://127.0.0.1:8000/api/books  -H 'Authorization:Basic username:password'
```

## User Authentication with Curl using middleware auth.basic

```
    $ curl -H 'content-type: application/json' -H 'Accept: application/json' -v -X GET http://127.0.0.1:8000/api/books  -H 'Authorization:Basic email:password'
```

## Run App in container Docker with Laravel Sail 

```
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/opt \
    -w /opt \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs
```

## Run Start Application with Laravel Sail
```
  ./vendor/bin/sail up
```
## Actions
![example workflow](https://github.com/github/docs/actions/workflows/main.yml/badge.svg)
## Sonarqube
[![Quality Gate Status](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=alert_status&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Bugs](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=bugs&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Code Smells](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=code_smells&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Coverage](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=coverage&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Duplicated Lines (%)](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=duplicated_lines_density&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Lines of Code](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=ncloc&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Maintainability Rating](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=sqale_rating&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Reliability Rating](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=reliability_rating&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Security Hotspots](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=security_hotspots&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Security Hotspots](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=security_hotspots&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Security Hotspots](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=security_hotspots&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
[![Vulnerabilities](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=vulnerabilities&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
