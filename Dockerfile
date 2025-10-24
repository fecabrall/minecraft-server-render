FROM openjdk:17-jdk-slim

WORKDIR /server

COPY . .

RUN chmod +x start.sh

EXPOSE 25565

CMD ["./start.sh"]
