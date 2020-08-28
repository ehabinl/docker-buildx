FROM docker:latest
  
ENV DOCKER_CLI_EXPERIMENTAL=enabled

RUN mkdir -p ~/.docker/cli-plugins \
  && wget -qO- https://api.github.com/repos/docker/buildx/releases/latest | grep "browser_download_url.*linux-amd64" | cut -d : -f 2,3 | tr -d '"' | xargs wget -O ~/.docker/cli-plugins/docker-buildx \
  && chmod a+x ~/.docker/cli-plugins/docker-buildx
