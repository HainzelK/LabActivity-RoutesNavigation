# navigation_codelab
Dalam codelab ini dapat dipelajari cara memindahkan screen menggunakan routing. Untuk perpindahan screen dapat mengggunakan tombol pindah screen atau menggunakan navbar. 

## Cara Install dan Pakai

### Prasyarat
- Pastikan Anda telah menginstal Flutter SDK di komputer Anda.
- Pastikan Anda memiliki editor kode seperti Android Studio atau Visual Studio Code.

### Langkah-langkah Instalasi
1. Clone repositori ini ke komputer Anda:
   bash
   git clone https://github.com/HainzelK/LabActivity-RoutesNavigation.git
   
2. Navigasikan ke direktori proyek:
   bash
   cd navigation_codelab
   
3. Jalankan perintah berikut untuk menginstal dependensi:
   bash
   flutter pub get
   

### Cara Menjalankan Aplikasi
1. Hubungkan perangkat Android atau iOS Anda, siapkan emulator atau run menggunakan web edge.
2. Jalankan aplikasi dengan perintah berikut:
   bash
   flutter run

## Cara penggunaan aplikasi
- Pada screen pertama, klik tombol to the second screen untuk ke screen kedua atau klik tombol to the third screen untuk ke screen ketiga.
- Pada screen kedua, klik tombol go back to the first screen untuk kembali ke screen pertama atau klik tombol to the third screen untuk ke screen ketiga.
- Pada screen ketiga, klik tombol go back to the first screen untuk kembali ke screen pertama atau klik tombol to the second screen untuk ke screen kedua.
- Pada ketiga screen, ada navbar yang dipakai untuk berpindah screen. Tombol first untuk ke first screen, tombol second untuk ke second screen, dan tombol third untuk ke third screen.

## Approach
Untuk mengerjakan tugas ini, saya mengcopy ketiga code yang disediakan di elearn. Kemudian saya membuat screen ketiga dengan cara mengcopy screen pertama dan mengubah teksnya. Setelah itu, saya mengganti isi di main.dart untuk membuat routing setiap screen. Untuk setiap tombol untuk pindah screen, saya ubah dari navigator pop menjadi navigator pushNamedAndRemoveUntil agar screen bisa berubah sesuai routingnya dan menghapus dari memory semua screen sebelum screen yang ingin dituju agar tidak terlalu berat bagi aplikasi. Untuk navbar, saya buat menggunakan cara yang sama dengan cara perpindahan screen lain yaitu menggunakan routing dari main.dart dan navigator pushNamedAndRemoveUntil untuk perpindahan screennya. 

## Challenges
Untuk proyek kali ini, tantangan yang saya hadapi adalah saat dibuat pertama kali, screen saya tidak mau berpindah kembali ke screen pertama saat diklik "go to the first screen" karena menggunakan navigator push. Screen hanya kembali ke screen sebelumnya jadi saya ubah navigator push menjadi navigator pushNamedAndRemoveUntil agar perpindahannya ke semua screen bisa dilakukan dengan baik dan agar tidak terlalu berat karena screen-screen sebelumnya juga dihapus dari memori.

## Fitur utama
- Tombol perpindahan screen : di setiap screen, ada dua tombol. Untuk screen pertama ada tombol untuk ke screen kedua dan ke screen ketiga. Untuk screen kedua, ada tombol untuk kembali ke screen pertama dan tombol untuk lanjut ke screen ketiga. Untuk screen ketiga, ada tombol untuk kembali ke screen pertama dan tombol untuk kembali ke screen kedua.
- Navbar : di setiap screen ada navbar di bagian bawah screen. Penggunaan navbar adalah untuk pindah screen sama seperti tombol yang ada pada screen.
