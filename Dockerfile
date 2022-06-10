FROM alseambusher/crontab-ui

RUN apk add --no-cache \
        aws-cli \
        docker-cli \
        rsync \
        tzdata
