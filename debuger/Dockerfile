FROM ubuntu:16.04
RUN apt update && \
	apt install -y curl iputils-ping telnet net-tools dnsutils vim mysql-client postgresql-client redis-tools wget apt-transport-https

RUN curl -L https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

ENV KUBE_LATEST_VERSION="v1.19.4"

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

RUN curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp && \
	mv -v /tmp/eksctl /usr/local/bin

RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add - && \
	echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list && \
	apt update && apt install -y mongodb-org-shell
