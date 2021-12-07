FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN apt-get -y install git
COPY . .
EXPOSE 8000
ENTRYPOINT ["./entrypoint.sh"]