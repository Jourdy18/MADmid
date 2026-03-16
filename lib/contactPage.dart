import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTACT"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 244, 19, 3),
      ),


      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red[200],
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  SizedBox(height: 10),

                  Image.asset(
                    "lib/img/Jourdy.jpg",
                    width: 60,
                  ),

                  SizedBox(height: 30),

                  Text(
                    "Nama : Jourdy Sahensolar",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Email : s22310314@unklab.ac.id",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Phone : 081234567890",
                    style: TextStyle(color: Colors.white),
                  ),

                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
              color: Colors.red[200],
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  SizedBox(height: 10),

                  Image.asset(
                    "lib/img/willi.jpeg",
                    width: 60,
                  ),

                  SizedBox(height: 30),

                  Text(
                    "Nama : William Jo",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Email : s000000@unklab.ac.id",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Phone : 081234567890",
                    style: TextStyle(color: Colors.white),
                  ),

                ],                
              ),
            ),
          ),
        ],
      ),
    );
  }
}