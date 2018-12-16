
## Dokumentasi

Dalam API yang saya buat terdiri dari 2 endpoint GET dan 2 endpoint POST sesuai deskripsi. akan tetapi saya menambahkan authentikasi dengan menggunakan proteksi JWT demi standart pertukaran data yang lebih aman untuk mengakses 4 endpoint yang sesuai pada deskripsi.

## EndPoint Register dan Login
    
    - localhost:3000/register
    - calhost:3000/login
    
    keterangan:
    - register: silahkan memasukan form kolom (first_name, last_name, email, dan password) pada body
      gunakan "x-www-form-urlencoded" pada postman
    - login: menggunakan email dan password

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

## EndPoint Utama
sebelum mengakses endpoint utama harus melakukan login terlebih dahulu, sebelum login harus register terlebih dulu. setelah login. anda akan mendapatkan token akses yang digunakan sebagai authentikasi pada endpoint. bisa menggunakan "header" dengan key "Authorization" dan "value" = "Bearer ---token akses---"

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

## **NOTE
Saya menyertakan database yang sudah berisi beberapa data jika ingin langsung menggunakan database dari hasil yang sudah pernah saya coba,diantaranya data login berupa:
email = yaya@gmail.com
pass  = 12345  
