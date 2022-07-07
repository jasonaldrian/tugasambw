import 'package:flutter/material.dart';
import 'package:pert9iconwidget/my_flutter_app_icons.dart';

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
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.dangerous,
                size: 50,
                color: Colors.orange,),
              Icon(MyFlutterApp.emo_beer,
              size: 50,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
