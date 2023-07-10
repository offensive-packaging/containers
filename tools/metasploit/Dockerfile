FROM parrot.run/nmap:latest
ENV DEBIAN_FRONTEND noninteractive

# Install components
RUN apt update && apt -y --no-install-recommends install parrot-menu;apt-get -y install metasploit-framework postgresql aircrack-ng- at-spi*- dconf*- gsettings*- gtk*- hicolor*- mesa-*- pyqt5*- qt5-*- qtbase5*- samba-common- -t parrot-backports; rm -rf /var/lib/apt/lists/*

COPY msfconsole-start /msfconsole-start
RUN chmod +x /msfconsole-start

ENTRYPOINT /msfconsole-start $@
