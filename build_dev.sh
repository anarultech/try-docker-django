#!/usr/bin/env bash
DJANGO_SETTINGS_MODULE=try_docker.settings \
DJANGO_SECRET_KEY="change-this-to-50-characters-long-
 random-string" \
DATABASE_NAME=try_docker \
DATABASE_USER=try_docker \
DATABASE_PASSWORD="change-this-too" \
PIP_REQUIREMENTS=requirements.txt \
docker-compose up --detach --build