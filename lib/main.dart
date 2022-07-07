import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Pertama saya",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Pertama saya"),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("sadadasd" ,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0)),
                  Text("cobacoba",
                      style: TextStyle(color: Colors.grey,fontSize: 16.0)),
                ],
              ),
              Row(children:const [
                Icon(Icons.star, color: Colors.red,),
                Text("41")
              ],)

            ],
          ),
        ),
      ),
    );
  }
}
