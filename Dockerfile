FROM node:14.16

WORKDIR /build
COPY .gitconfig ~/.gitconfig
COPY Dockerfile .
ARG GIT_ACCESS_TOKEN_LB_CORE

RUN git config --global user.email "duydv@fireapps.vn"
RUN git config --global user.name "duyhenryer"
RUN git config --global credential.helper store
RUN git config --global url."https://${GIT_ACCESS_TOKEN_LB_CORE}@github.com".insteadOf "ssh://git@github.com"

# RUN git clone https://duyhenryer:${GIT_ACCESS_TOKEN_LB_CORE}@github.com/YoungWorldTechnology/lb-core.git xxx
# RUN ls -al
RUN ls -al
#RUN git clone git@github.com:YoungWorldTechnology/lb-core.git

RUN git clone https://github.com/YoungWorldTechnology/lb-core.git
RUN ls -al
