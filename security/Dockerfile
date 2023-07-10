FROM parrot.run/core:5.3
ENV DEBIAN_FRONTEND noninteractive

# Install components
RUN apt-get update;apt-get -y install parrot-tools-cloud zulucrypt- sirikali- apache2*- nginx*- at-spi*- dconf*- gsettings*- gtk*- hicolor*- mesa-*- pyqt5*- qt5-*- qtbase5*- alsa*- xserver*- zaproxy- burpsuite- xdg*- intel-*- wine*- i965-va-driver-  parrot-drivers- nvidia-*- wireshark-qt- x11*-; rm -rf /var/lib/apt/lists/*

ENTRYPOINT bash $@
