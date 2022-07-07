import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Percobaan Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Percobaan Pertama"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding:EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Widget Text"),
              Text("Widget Text bold",
              style: TextStyle(
                fontFamily: "Raleway",
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blue,
                decoration: TextDecoration.combine([
                  TextDecoration.overline,
                  TextDecoration.underline,
                ]),
                decorationThickness: 2.0,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
                letterSpacing: 2.0,
                wordSpacing: 10.0,
                shadows: [
                  Shadow(
                    color: Colors.yellow,
                    blurRadius: 2.0,
                    offset: Offset(1,1),
                  )
                ]
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}