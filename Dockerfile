FROM python:3.6


LABEL version="0.1.0"
LABEL repository="https://github.com/govindarajanv/secrets-scan-actions"
LABEL maintainer="Govindarajan V"

#Docker caches the command so update and install should be in the same command
RUN apt-get update -y
RUN pip install gittyleaks


COPY ./ /repo
WORKDIR /repo
# ENV PATH /repo:$PATH
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
