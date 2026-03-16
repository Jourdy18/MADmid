import 'package:flutter/material.dart';
import 'detailPage.dart';
import 'aboutPage.dart';
import 'contactPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Profil",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final List data = [
    {
      "title": "Jourdy Sahensolar",
      "image": "lib/img/Jourdy.jpg",
      "desc": "halo perkenalkan nama saya Jourdy Sahensolar, saya adalah seorang mahasiswa semester 6 di universitas kelabat"
    },
    {
      "title": "William Jo",
      "image": "lib/img/willi.jpeg",
      "desc": "halo perkenalkan nama saya William Jo, saya adalah seorang mahasiswa semester 6 di universitas kelabat"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index){

          return Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [

                Image.asset(
                  data[index]["image"],
                  width: 100,
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Text(
                    data[index]["title"],
                    style: TextStyle(fontSize: 18),
                  ),
                ),

                ElevatedButton(
                  child: Text("Detail"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          title: data[index]["title"],
                          image: data[index]["image"],
                          desc: data[index]["desc"],
                        ),
                      ),
                    );
                  },
                )

              ],
            ),
          );

        },
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            ElevatedButton(
              child: Text("About"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AboutPage()),
                );
              },
            ),

            ElevatedButton(
              child: Text("Contact"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>ContactPage()),
                );
              },
            ),

          ],
        ),
      ),

    );
  }
}