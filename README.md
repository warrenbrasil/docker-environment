# docker-environment

Environment to run docker projects.

## Requirements

- [Docker](https://docs.docker.com/install) - Documentation

- [Docker Compose](https://docs.docker.com/compose/install) - Documentation

### How to

- `docker-compose.yml` - Contains the recipe of services ( MongoDB / API / WEB )

- `.docker/` - Docker Images recipes

### commands

Starting:

`docker-compose up` or `docker-compose up -d` for running in background

Turn containers off:

`CTRL+C` or `docker-compose down`

Running commands inside container:

`docker-compose exec {service-name} {commands}`

`docker-compose exec {service-name} bash` for access the shell inside