import 'package:flutter/material.dart';
import 'data_anggota.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTACT"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 244, 19, 3),
      ),
      body: ListView.builder(
        itemCount: anggotaList.length,
        itemBuilder: (context, index) {
          final contact = anggotaList[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(contact["image"]!),
                    onBackgroundImageError: (_, __) => Icon(Icons.person),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contact["nama"]!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("NIM: ${contact["nim"]}"),
                        Text("Email: ${contact["email"]}"),
                        Text("Phone: ${contact["phone"]}"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}