# FROM node:14.16

# WORKDIR /build
# # COPY .gitconfig ~/.gitconfig
# COPY Dockerfile .
# ARG GIT_ACCESS_TOKEN_LB_CORE

# RUN git config --global user.email "duydv@fireapps.vn"
# RUN git config --global user.name "duyhenryer"
# RUN git config --global credential.helper store
# #RUN git config --global url."https://${GIT_ACCESS_TOKEN_LB_CORE}@github.com".insteadOf "ssh://git@github.com"

# RUN echo https://duyhenryer:$GIT_ACCESS_TOKEN_LB_CORE@github.com > ~/.git-credentials


# #RUN git clone https://duyhenryer:${GIT_ACCESS_TOKEN_LB_CORE}@github.com/YoungWorldTechnology/lb-core.git xxx
# # RUN ls -al
# RUN ls -al
# #RUN git clone git@github.com:YoungWorldTechnology/lb-core.git

# RUN git clone https://github.com/YoungWorldTechnology/lb-core.git
# RUN ls -al


FROM node:10-alpine

ARG SSH_KEY

RUN apk add git openssh-client

COPY package.json .

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN ssh-agent sh -c 'echo $SSH_KEY | base64 -d | ssh-add - ; npm install'
