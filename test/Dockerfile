FROM nginx

WORKDIR /app

COPY . .

RUN cat .env

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/
