```
name:         | docker-registry
compiler:     | docker-compose
version:      | v1.0, 20200218
```

## Description:

A Docker compose registry setup with Drone as CI/CD.

## Setup:
### Fast Deploy:
* `chmod +x init-env.sh && ./init-env.sh && nano .env`
* `chmod +x init-htpasswd.sh && ./init-htpasswd.sh`
* Add `registry-garbage-collect.sh` to crontab.
