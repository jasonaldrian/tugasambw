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
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 120,
                color: Colors.amber,
                child: Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("coba1"),),
                    ElevatedButton(onPressed: (){}, child: Text("coba2"),),
                    ElevatedButton(onPressed: (){}, child: Text("coba3"),),
                    ElevatedButton(onPressed: (){}, child: Text("coba4"),),
                    ElevatedButton(onPressed: (){}, child: Text("coba5"),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 120,
                color: Colors.amber,
                child: Wrap(
                  direction: Axis.vertical,
                  spacing: 20,
                  runSpacing: 5,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("coba1"),),
                    ElevatedButton(onPressed: (){}, child: Text("coba2"),),
                    ElevatedButton(onPressed: (){}, child: Text("coba3"),),
                    ElevatedButton(onPressed: (){}, child: Text("coba4"),),
                    ElevatedButton(onPressed: (){}, child: Text("coba5"),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}