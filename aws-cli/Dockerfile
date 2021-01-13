FROM amazon/aws-cli

WORKDIR /app

ENV KUBE_LATEST_VERSION="v1.19.4"

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl
