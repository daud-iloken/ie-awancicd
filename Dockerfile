FROM node:18-alpine

WORKDIR /usr/src/app

# Salin package.json dan package-lock.json sahaja
COPY package.json ./

RUN npm install

# Salin semua file app
COPY . .

EXPOSE 3000
CMD ["npm", "start"]

