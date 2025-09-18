FROM node:18-alpine

WORKDIR /usr/src/app

# Salin file package.json (dan package-lock.json kalau ada)
COPY package*.json ./

# Pasang dependensi
RUN npm install

# Baru salin semua source code
COPY . .

EXPOSE 3000
CMD ["npm", "start"]
