FROM nginx

WORKDIR /app

COPY . .

RUN ls -al

RUN cat .env
