FROM python:3.8-buster

RUN apt-get update && apt-get install -y zip

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR workdir

ENTRYPOINT ["/entrypoint.sh"]
