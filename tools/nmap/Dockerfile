FROM parrot.run/core:5.3
ENV DEBIAN_FRONTEND noninteractive

# Install components
RUN apt update && apt -y --no-install-recommends install parrot-menu && apt -y install nmap ncat ndiff dnsutils traceroute netcat; rm -rf /var/lib/apt/lists/*

ENTRYPOINT nmap $@
