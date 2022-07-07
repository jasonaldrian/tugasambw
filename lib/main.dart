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
  void fungsiButtonKlik(){
    print("Button Clicked");
  }
  TextEditingController _dataController=TextEditingController();
  String data='';
  void tampilkanData(){
    setState((){
    data=_dataController.text;
    print(data);
    });
  }
  void dispose(){
    _dataController.dispose();
    super.dispose();
  }
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
              ElevatedButton(
                onPressed:(){
                fungsiButtonKlik();
                }, child:Text("Button 1"),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Data"
                ),
                controller: _dataController,
              ),
              ElevatedButton(onPressed: (){
                tampilkanData();
              }, child: Text("Klik untuk menampilkan"),),
              Text("$data"),
            ],
          ),
        ),
      ),
    );
  }
}