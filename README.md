# Aplikasi Autentikasi Firebase (Pertemuan 8)

Aplikasi mobile berbasis **Flutter** yang terintegrasi dengan **Firebase Authentication** untuk mengelola proses autentikasi pengguna secara *real-time* menggunakan arsitektur modular (`AuthWrapper`, `LoginPage`, dan `UserInfoScreen`).

## Identitas Mahasiswa
* **Nama:** Fadhil Hidayattulloh
* **NIM:** 1124160087
* **Program Studi:** Teknik Informatika

---

## Screenshot Aplikasi

| Halaman Login | Halaman Informasi Akun |
| :---: | :---: |
| <img src="screenshot/login_page.png" width="250" alt="Halaman Login"> | <img src="screenshot/user_info_page.png" width="250" alt="Halaman Informasi Akun"> |

---

## Fitur Utama
1. **Manajemen State Autentikasi Otomatis (`AuthWrapper`):**
   * Menggunakan `StreamBuilder` yang memantau `FirebaseAuth.instance.authStateChanges()` secara langsung.
   * Mengarahkan pengguna secara otomatis ke halaman informasi akun jika sesi masih aktif (*auto-login*), atau ke halaman login jika belum masuk.
2. **Halaman Login (`LoginPage`):**
   * Validasi input email dan password (minimal 6 karakter) menggunakan `Form` dan `TextFormField`.
   * Fitur *toggle* tampilkan/sembunyikan password.
   * Proses autentikasi ke Firebase menggunakan `signInWithEmailAndPassword` lengkap dengan indikator *loading* dan penanganan pesan error (`SnackBar`).
3. **Halaman Informasi Akun (`UserInfoScreen`):**
   * Menampilkan foto profil pengguna (`photoURL`) dalam bentuk `CircleAvatar` serta `displayName` dan email.
   * Menampilkan detail akun dari Firebase Authentication: **User ID (UID)**, **Email**, **Status Verifikasi Email**, **Waktu Akun Dibuat**, dan **Login Terakhir**.
   * Fitur **Logout** (`signOut`) untuk mengakhiri sesi pengguna.

---

## Struktur Folder
```text```
lib/
├── firebase_options.dart
├── main.dart
├── screens/
│   ├── login_page.dart
│   └── user_info_screen.dart
└── widgets/
    └── auth_wrapper.dart
