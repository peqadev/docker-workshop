FROM ubuntu:latest
LABEL MAINTAINER="Erick Agrazal - erick@agrazal.com"

WORKDIR /src/
COPY ejemplo.txt ejemplo.text
ADD ejemplo_con_add.txt .
CMD ["ls", "-lsa"]