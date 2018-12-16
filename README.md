
## Dokumentasi

## installasi
1. lakukan pull dan install package yang dibutuhkan    
    
    $ git pull
    $ npm install

2. buatlah database pada mysql lalu setting file config.json yang terletak pada config/config.json. sesuaikan nama database.

    $ sequalize db:migrate

3. jalankan dengan menggunakan:

    $ npm start 
    
    atau
    
    $ nodemon start //jika sudah intall nodemon

Dalam API yang saya buat terdiri dari 2 endpoint GET dan 2 endpoint POST sesuai deskripsi. 
    - localhost:8000/api/classes (GET)  //menampilkan semua class
    - localhost:8000/api/students/{id} (GET) //menampilkan class beserta student disetiap classnya dengan parameter id kelas
    - localhost:8000/api/classes (POST) //menambahkan data pada tabel classes
    - localhost:8000/api/students (POST) //menambahkan data pada tabel students

## Library/Package
pada pengerjaan technical test ini saya menggunakan beberapa library/package tambahan berupa:
- express
- mysql2
- sequalize dan cli-sequalize
- body parser
- uuid 
