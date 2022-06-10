# crontab-ui
Based on [alseambusher/crontab-ui](https://hub.docker.com/r/alseambusher/crontab-ui) with additional packages for jobs including:
- aws-cli
- docker-cli
- rsync

Run it:
```bash
docker run \
    --restart=on-failure:5 \
    --name=crontab-ui \
    --env TZ=America/Toronto \
    --env BASIC_AUTH_USER=user \
    --env BASIC_AUTH_PWD=SecretPassword \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v aws_credentials:/root/.aws \
    -v cron_tabs:/crontab-ui/crontabs \
    -v some_dir_to_sync:/sync_dir \
    emackie/crontab-ui
```