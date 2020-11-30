FROM mcr.microsoft.com/vscode/devcontainers/ruby:2

# ENV Variables required by Jekyll
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    TZ=Europe/London \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US

# Install build-essential and download and build ImageMagick
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
&& apt-get -y install --no-install-recommends \ 
build-essential \
&& wget https://www.imagemagick.org/download/ImageMagick.tar.gz \
&& tar xvzf ImageMagick.tar.gz \
&& cd ImageMagick* \
&& ./configure \
&& make \
&& make install \
&& ldconfig /usr/local/lib
