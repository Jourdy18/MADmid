import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABOUT"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aplikasi Profil",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              "Deskripsi Aplikasi:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Text(
              "Aplikasi ini dibuat menggunakan Flutter untuk menampilkan data dan informasi anggota kelompok berdasarkan NIM. Pengguna dapat mencari NIM dan melihat profil lengkap.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 15),
            Text(
              "Tujuan Aplikasi:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Text(
              "Aplikasi ini bertujuan untuk memudahkan pencarian data anggota kelompok serta memenuhi tugas pengembangan aplikasi mobile menggunakan Flutter.",
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}