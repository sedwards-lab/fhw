FROM ubuntu:16.04

RUN echo "Getting wget"
RUN apt-get update -y
RUN apt-get install wget -y

RUN echo "Installing ghc and cabal"
RUN apt-get install build-essential libffi6 libgmp-dev libffi-dev libbsd-dev -y
RUN wget http://launchpadlibrarian.net/172682369/ghc_7.6.3-10_amd64.deb
RUN wget http://launchpadlibrarian.net/141188771/cabal-install_1.16.0.2-2_amd64.deb
RUN rm -rf ~/.cabal ~/.ghc
RUN dpkg -i cabal-install_1.16.0.2-2_amd64.deb
RUN dpkg -i ghc_7.6.3-10_amd64.deb
RUN apt-mark hold ghc
RUN cabal update
RUN cabal install syb-0.4.2 extcore mtl QuickCheck-2.9.1 hint random-shuffle happy


WORKDIR "/home"


RUN apt-get install git nano happy -y
RUN apt-get install graphviz -y

RUN git config --global core.autocrlf input