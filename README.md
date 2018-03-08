# Konoyubi

[![Build Status](https://travis-ci.org/maku693/konoyubi.svg?branch=master)](https://travis-ci.org/maku693/konoyubi)

Konoyubi is a event management web application. Users can create events, and
anyone who knows the event's URL can participate to the event, without creating
an account or signing-in.

## System Requirements

- Ruby 2.5.0
- NodeJS 8+
- Yarn
- PostgreSQL

## Development Environment

For local development, please use docker-compose.  
`docker` directory contains `docker-compose.yml` and Dockerfile for the
application.

### Use development console

To run rails commands, rake, yarn, or other command-line tools, attach to a
docker container:
```
$ cd docker
$ docker-compose run --rm rails sh
/usr/src/app # bin/rails db:setup
```

### Launch development server

To launch the application, run:
```
$ cd docker
$ docker-compose up -d
```

Then you can visit the application at `http://localhost:3000`.  
Demo event for testing is available on `http://localhost:3000/demo-event`.

## Deployment

TBD
