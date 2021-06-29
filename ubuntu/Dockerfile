FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    # gnupg \
    # lsb-release

# RUN ln -s /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

# RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# RUN echo \
#   "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# RUN apt-get update
# RUN apt-get -y install docker-ce docker-ce-cli containerd.io \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/* \
#     && useradd -m github \
#     && usermod -aG sudo github \
#     && usermod -aG docker github 