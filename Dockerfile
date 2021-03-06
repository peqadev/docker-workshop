FROM node:14
LABEL MAINTAINER="Erick Agrazal - erick@agrazal.com"

# Define la carpeta en la que se trabajará. La carpeta es creada en el caso que no exista
WORKDIR /src/

# Para copiar un archivo, sin usar URL's ni decompresión (Ignora lo que esté lista dentro del .dockerignore)
COPY ejemplo.txt ejemplo.text

# Para copiar un archivo, aceptando usar URL's y decompresión, usar solamente en caso de ser requerido. (Ignora lo que esté lista dentro del .dockerignore)
ADD ejemplo_con_add.txt .

# copiamos todos los archivos package*.json (Ignora lo que esté lista dentro del .dockerignore)
COPY package*.json ./

# Ejecutamos el proceso de instalacion, para evitar que luego de cada cambio, se vuelva a tener
# que ejecutar el proceso de instalacion de las dependencias. 
RUN npm install

# Copia el resto de los archivos hacia la imagen. (Ignora lo que esté lista dentro del .dockerignore)
COPY . .

# No "publica el puerto", solamente es para que el siguiente developer, sepa que debe abrir este puerto
# al ejecutar el contenedor
EXPOSE 8080

# Ejecutamos el servidor
CMD [ "node", "app.js" ]
