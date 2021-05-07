FROM nginx

WORKDIR /app

COPY . .

RUN cat .env
