FROM gitpod/workspace-full-vnc
                    
USER gitpod

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN sudo apt-get -q update && sudo apt-get install -yq cmake fakeroot g++ gettext git libgtest-dev \
        libcurl4-openssl-dev libqrencode-dev  libssl-dev libuuid1 \
        libwxgtk3.0-gtk3-dev libxerces-c-dev libxt-dev libxtst-dev \
        libykpers-1-dev libyubikey-dev make pkg-config uuid-dev zip \
        libmagic-dev
# Set debconf back to normal.
RUN echo 'debconf debconf/frontend select Dialog' | debconf-set-selections
