import 'package:flutter/material.dart';
import 'data_anggota.dart';

class DetailPage extends StatelessWidget {
  final String nim;
  DetailPage({required this.nim});

  Map<String, String>? getDataByNim() {
    try {
      return anggotaList.firstWhere((item) => item["nim"] == nim);
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = getDataByNim();
    if (data == null) {
      return Scaffold(
        appBar: AppBar(title: Text("Detail")),
        body: Center(child: Text("Data tidak ditemukan")),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Profil"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(data["image"]!),
                onBackgroundImageError: (_, __) => Icon(Icons.person, size: 50),
              ),
            ),
            SizedBox(height: 20),
            _buildInfoRow("NIM", data["nim"]!),
            _buildInfoRow("Nama", data["nama"]!),
            _buildInfoRow("Jenis Kelamin", data["jenisKelamin"]!),
            _buildInfoRow("Fakultas", data["fakultas"]!),
            _buildInfoRow("Program Studi", data["prodi"]!),
            _buildInfoRow("Email", data["email"]!),
            _buildInfoRow("No. HP", data["phone"]!),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              "$label:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}