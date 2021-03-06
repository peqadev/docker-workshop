FROM ubuntu:latest
LABEL MAINTAINER="Erick Agrazal - erick@agrazal.com"

WORKDIR /src/
COPY ejemplo.txt ejemplo.text

CMD ["ls", "-lsa"]