FROM node:14.16

WORKDIR /build
COPY . .

ARG CORE_ACCESS_TOKEN

# RUN git config --global user.email "duydv@fireapps.vn"
# RUN git config --global user.name "duyhenryer"
# RUN git config --global credential.helper store
COPY gitconfig ~/.gitconfig
RUN ls -al
RUN echo https://duyhenryer:$CORE_ACCESS_TOKEN@github.com > ~/.git-credentials
RUN ls -al
RUN cat ~/.git-credentials
RUN cat ~/.gitconfig

RUN git clone https://github.com/YoungWorldTechnology/lb-core.git
RUN ls -al
