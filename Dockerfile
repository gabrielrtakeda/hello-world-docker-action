# Container image that runs your code
FROM ubuntu:xenial

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY README.md /
COPY entrypoint.sh /entrypoint.sh

# Install s3cmd and cleanup other stuffs
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends s3cmd && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean -y

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
