FROM mcr.microsoft.com/dotnet/core/sdk:3.1

LABEL version="0.1.0"
LABEL repository="https://github.com/govindarajanv/docker-actions"
LABEL maintainer="Govindarajan V"

#Docker caches the command so update and install should be in the same command
RUN apt-get update && apt-get install jq -y 

RUN dotnet tool install -g GitReleaseManager.Tool 
ENV PATH /root/.dotnet/tools:$PATH
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
