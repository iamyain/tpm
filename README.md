# kuistpm
Screenshoot hasil running program sudah dimasukan digithub


# untuk menjalankan program
Untuk mengatasi error "No named parameter with the name 'isVisible'" pada file url_launcher_web.dart, dapat mengikuti langkah-langkah berikut:
1. Buka file url_launcher_web.dart yang berada pada direktori /C:/src/flutter/.pub-cache/hosted/pub.dartlang.org/url_launcher_web-2.0.7/lib/
2. Cari baris kode berikut:
   .registerViewFactory(linkViewType, linkViewFactory, isVisible: false);
3. Ubah parameter isVisible menjadi visible, sehingga baris kode tersebut menjadi:
   .registerViewFactory(linkViewType, linkViewFactory, visible: false);
4. Simpan perubahan dan jalankan kembali aplikasi Anda.

