# Base docker image
FROM ubuntu:20.04
LABEL maintainer="IrekFasikhov <malmyzh@gmail.com>"

ENV QTWEBENGINE_DISABLE_SANDBOX=1
ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    dunst \
    hunspell-en-us \
    python3-dbus \
    software-properties-common \
    libx11-xcb1 \
    gconf2 \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    libxcomposite1 \
    libxslt1.1 \
    gstreamer1.0-plugins-base  \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-ugly \
    libgstreamer1.0-0 \
    libgstreamer-plugins-base1.0-0 \
    gstreamer1.0-pulseaudio \
    gstreamer1.0-libav \
    libpulse-mainloop-glib0 \
    pulseaudio \
    libpulse-dev \
    libpci3 \ 
    xdg-utils \
    libxcb* \
    libxkb* \
    curl \
    dbus-x11
RUN curl -L http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb -o viber.deb
RUN apt-get install ./viber.deb -y
RUN rm -rf viber.deb

RUN useradd -s /bin/bash -m viber
USER viber

CMD /opt/viber/Viber
