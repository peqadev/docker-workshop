FROM ubuntu:latest
LABEL MAINTAINER="Erick Agrazal - erick@agrazal.com"

# Define la carpeta en la que se trabajará. La carpeta es creada en el caso que no exista
WORKDIR /src/

# Para copiar un archivo, sin usar URL's ni decompresión
COPY ejemplo.txt ejemplo.text

# Para copiar un archivo, aceptando usar URL's y decompresión, usar solamente en caso de ser requerido.
ADD ejemplo_con_add.txt .

CMD ["ls", "-lsa"]