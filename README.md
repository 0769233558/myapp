<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">Back-end with Laravel</h3>

  <p align="center">
    This Laravel REST Api project is designed to demonstrate my proficiency in building, deploying, and managing web applications using Laravel, a powerful PHP framework, within a Docker container environment. I have used this repo (ishaqadhel/docker-laravel-mysql-nginx-starter) as a starting point. It provides the docker definition file / server configuration and a laravel new project.
    <br />
    You can see the full README of that project here: http://github.com/ishaqadhel/docker-laravel-mysql-nginx-starter#readme
    <br />
  </p>
</div>

<!-- GETTING STARTED -->
## Getting Started

Follow the instruction below to run the project.

<!-- USAGE EXAMPLES -->
## Run App With GNU Make (UNIX Based OS: MacOS, Linux)

- `make run-app-with-setup` : build docker and start all docker container with laravel setup
- `make run-app-with-setup-db` : build docker and start all docker container with laravel setup + database migration and seeder
- `make run-app` : start all docker container
- `make kill-app` : kill all docker container
- `make enter-nginx-container` : enter docker nginx container
- `make enter-php-container` : enter docker php container
- `make enter-mysql-container` : enter docker mysql container
- `make flush-db` : run php migrate fresh command
- `make flush-db-with-seeding` : run php migrate fresh command with seeding


<!-- USAGE EXAMPLES -->
## Run App Manually

- Create .env file for laravel environment from .env.example on src folder
- Run command ```docker-compose build``` on your terminal
- Run command ```docker-compose up -d``` on your terminal
- Run command ```docker exec -it php /bin/sh``` on your terminal
- Run command ```composer install``` and ```chmod -R 777 storage``` inside the php container on docker
- If app:key still empty on .env run ```php artisan key:generate``` inside the php container on docker
- To run artisan command like migrate, etc. go to php container using ```docker exec -it php /bin/sh```
- Go to http://localhost:8001 or any port you set to open laravel

**Note: if you got a permission error when running docker, try running it as an admin or use sudo in linux**

## Sonarqube

- [![Quality Gate Status](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=alert_status&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Bugs](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=bugs&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Code Smells](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=code_smells&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Coverage](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=coverage&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Duplicated Lines (%)](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=duplicated_lines_density&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Lines of Code](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=ncloc&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Maintainability Rating](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=sqale_rating&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Reliability Rating](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=reliability_rating&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Security Hotspots](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=security_hotspots&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Security Rating](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=security_rating&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Technical Debt](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=sqale_index&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
- [![Vulnerabilities](https://sonarqube.korporate.org/api/project_badges/measure?project=0769233558_myapp_AZLC5UHOSq_hx2o63YVA&metric=vulnerabilities&token=sqb_229226defed59a48da9d0f25da9f30d82dea84a6)](https://sonarqube.korporate.org/dashboard?id=0769233558_myapp_AZLC5UHOSq_hx2o63YVA)
