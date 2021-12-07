FROM php:7.2.26-alpine
RUN apt-get -y install git
COPY . .
EXPOSE 8000
ENTRYPOINT ["./entrypoint.sh"]