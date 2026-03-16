import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String title;
  final String image;
  final String desc;

  DetailPage({
    required this.title,
    required this.image,
    required this.desc
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAIL"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [

            Image.asset(image,width: 100,),

            SizedBox(height: 20),

            Text(
              title,
              style: TextStyle(fontSize: 22),
            ),

            SizedBox(height: 10),

            Text(desc),

            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}