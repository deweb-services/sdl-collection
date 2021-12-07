FROM tomcat:9
ENV PYTHONUNBUFFERED 1
RUN apt-get -y install git
COPY . .
EXPOSE 8080
ENTRYPOINT ["./entrypoint.sh"]
