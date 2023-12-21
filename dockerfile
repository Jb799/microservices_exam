# Utilisation de la dernière version de NodeJs:
FROM node:latest

# Copie du script dans le conteneur:
COPY ./src/count-server.js /count-server.js

# Définition de la variable d'environnement:
ENV APPLICATION_INSTANCE='myapp'

# Exposer le port 8080 utilisé dans le script:
EXPOSE 8080

# Exécution du script au démmarrage du conteneur:
CMD [ "node", "./count-server.js" ]
