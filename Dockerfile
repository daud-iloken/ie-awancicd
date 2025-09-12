# Gunakan imej rasmi Node.js sebagai pangkalan
FROM node:18-alpine

# Tetapkan direktori kerja dalam kontena
WORKDIR /usr/src/app

# Salin fail package.json dan package-lock.json untuk memasang dependensi
COPY package*.json ./

# Pasang dependensi projek anda
RUN npm install

# Salin semua kod sumber anda ke dalam kontena
COPY . .

# Jalankan ujian jika ada
# RUN npm test

# Tentukan port yang didengar oleh aplikasi
EXPOSE 3000

# Perintah untuk menjalankan aplikasi apabila kontena dilancarkan
CMD [ "npm", "start" ]
