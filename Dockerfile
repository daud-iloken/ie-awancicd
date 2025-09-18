FROM node:18-alpine

WORKDIR /usr/src/app

# Salin package.json dan package-lock.json dulu
COPY package*.json ./

# Pasang dependensi
RUN npm install

# Baru salin semua kod
COPY . .

EXPOSE 3000
CMD ["node", "index.js"]
