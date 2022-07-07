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
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/corgi.jpg",
                width: 200,
                height: 200,
              fit: BoxFit.cover,
              color: Colors.brown,
                colorBlendMode: BlendMode.color,),
              Image.network("https://image.shutterstock.com/image-photo/welsh-corgi-dog-smiling-on-260nw-1549572668.jpg",
              width: 200,
              height: 200,
              loadingBuilder: (context, child, loadingProgress){
                return loadingProgress ==null ? child: Text("Loading...");
              },)
            ],
          ),

        ),
      ),
    );
  }
}