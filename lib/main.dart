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
  TextEditingController _tfController = TextEditingController();

  @override
  void initState(){
    super.initState();
    _tfController.addListener(() {
      printIsiTextField();
    });
  }

  void printIsiTextField(){
    print(_tfController.text);
  }
  void dispose(){
    _tfController.dispose();
    super.dispose();
  }
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
            children: [
              TextField(
                autofocus: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.add_a_photo),
              ),
                onChanged: (text) {
                  print(text);
                },
                obscureText: true,
                obscuringCharacter: '*',
          ),
              SizedBox(height: 20,),
              TextField(
                textCapitalization: TextCapitalization.words,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "TextField Ke-2",
                  suffixIcon: Icon(Icons.add_task),
                ),
                controller: _tfController,
                ),
            ],
          ),
        ),
      ),
    );
  }
}