# Gunakan imej rasmi Node.js sebagai pangkalan
FROM node:18-alpine

# Tetapkan direktori kerja dalam kontena
WORKDIR /usr/src/app

# Salin semua fail dari repositori anda ke dalam imej Docker
COPY . .

# Pasang dependensi projek anda
RUN npm install

# Tentukan port yang didengar oleh aplikasi
EXPOSE 3000

# Perintah untuk menjalankan aplikasi apabila kontena dilancarkan
CMD ["npm", "start"]
