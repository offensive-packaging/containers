FROM parrot.run/nmap:latest
ENV DEBIAN_FRONTEND noninteractive

# Install components
RUN apt update && apt -y install bettercap -t parrot-backports; rm -rf /var/lib/apt/lists/*

ENTRYPOINT bettercap $@
