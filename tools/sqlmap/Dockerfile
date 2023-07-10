FROM parrot.run/nmap:latest
ENV DEBIAN_FRONTEND noninteractive

# Install components
RUN apt update && apt-get -y install sqlmap; rm -rf /var/lib/apt/lists/*

ENTRYPOINT sqlmap $@
