# utilser une image de base avec Node.js
FROM node:20.16

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installe les dépendances du projet
RUN npm install

# Copie le reste des fichiers du projet dans le conteneur
COPY . .

# Construire l'application en utilisant Next.js
RUN npm run build

# Expose le port 3000 pour le serveur Next.js
EXPOSE 3000

# Démarre l'application Next.js
CMD ["npm", "run", "dev"]