FROM parrot.run/core:5.3
ENV DEBIAN_FRONTEND noninteractive

# Install components
RUN apt update && apt -y install beef-xss geoip-database -t parrot-backports; rm -rf /var/lib/apt/lists/*

COPY init.sh /init.sh

RUN chmod +x /init.sh

ENTRYPOINT /init.sh $@
