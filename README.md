
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

## EndPoint

    - localhost:3000/classes (GET)  //menampilkan semua class
    - localhost:3000/classes (POST) //menambahkan data pada tabel classes
    - localhost:3000/students/class_id (GET) ///menampilkan class beserta students disetiap classnya dengan parameter id kelas 
    - localhost:3000/students (POST) //menambahkan data pada tabel students, gunakan "x-www-form-urlencoded" pada postman

## Library/Package
pada pengerjaan API ini saya menggunakan beberapa library/package tambahan berupa:
- express
- mysql2
- sequalize dan cli-sequalize
- body parser
- uuid 
