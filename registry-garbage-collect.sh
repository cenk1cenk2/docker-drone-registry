#!/bin/sh

# This should be run in a cron job in the host computer.
docker-compose run registry bin/registry garbage-collect /etc/docker/registry/config.yml
