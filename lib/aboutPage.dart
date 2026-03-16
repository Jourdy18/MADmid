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
          children: [

            Text(
              "Aplikasi Profil",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 15),

            Text(
              "Aplikasi ini dibuat menggunakan Flutter untuk menampilkan data dan informasi."
            ),

            SizedBox(height: 15),

            Text(
              "Tujuan aplikasi ini agar orang orang bisa tau saya ini siapa."
            ),

            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}