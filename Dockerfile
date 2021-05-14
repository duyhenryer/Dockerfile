FROM node:14.16

WORKDIR /build
COPY .gitconfig ~/.gitconfig
COPY Dockerfile .
ARG CORE_ACCESS_TOKEN

# RUN git config --global user.email "duydv@fireapps.vn"
# RUN git config --global user.name "duyhenryer"
# RUN git config --global credential.helper store

RUN git config --global url."https://${CORE_ACCESS_TOKEN}@github.com/".insteadOf "https://github.com/"
RUN npm install --ignore-scripts --quiet && npm cache clean --force
RUN git config --global --unset url."https://${CORE_ACCESS_TOKEN}@github.com/".insteadOf

RUN ls -al
RUN echo https://duyhenryer:$CORE_ACCESS_TOKEN@github.com > ~/.git-credentials
RUN ls -al


RUN git clone https://github.com/YoungWorldTechnology/lb-core.git
RUN ls -al
