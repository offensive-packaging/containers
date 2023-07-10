#syntax=docker/dockerfile:1-labs
FROM docker.parrot.run/library/debian:bullseye-slim as builder
RUN apt update && \
    apt -y install wget gnupg2 && \
    echo "deb https://deb.parrot.sh/parrot parrot main" > /etc/apt/sources.list && \
    wget -qO - https://deb.parrot.sh/parrot/keyring.gpg | apt-key add -
RUN apt update
RUN apt -y install parrot-archive-keyring debootstrap fakeroot fakechroot
RUN --security=insecure debootstrap --components=main,contrib,non-free --include=gnupg2,ca-certificates --exclude=parrot-core,gcc-9-base,debian-archive-keyring,rsyslog parrot parrot https://deb.parrot.sh/direct/parrot/ || cat /parrot/debootstrap/debootstrap.log
COPY 99retry-on-error /parrot/etc/apt/apt.conf.d/
COPY parrot-pinning /parrot/etc/apt/preferences.d/
RUN echo "deb https://deb.parrot.sh/parrot parrot main contrib non-free" > /parrot/etc/apt/sources.list; \
    echo "deb https://deb.parrot.sh/direct/parrot parrot-security main contrib non-free" >> /parrot/etc/apt/sources.list; \
    echo "#deb https://deb.parrot.sh/parrot parrot-updates main contrib non-free" >> /parrot/etc/apt/sources.list; \
    echo "deb https://deb.parrot.sh/parrot parrot-backports main contrib non-free" >> /parrot/etc/apt/sources.list

FROM scratch
COPY --link --from=builder /parrot/ /
RUN apt update && apt -y full-upgrade -t parrot && apt -y install netcat-traditional && rm -rf /var/lib/apt/lists/* && apt autoremove && apt clean
CMD /bin/sh
ENTRYPOINT /bin/bash
