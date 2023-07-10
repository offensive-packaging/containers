FROM parrot.run/metasploit:latest
ENV DEBIAN_FRONTEND noninteractive

# Install components
RUN apt update && apt -y install set; rm -rf /var/lib/apt/lists/*

ENTRYPOINT setoolkit $@
