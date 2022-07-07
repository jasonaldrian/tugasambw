import 'dart:developer';
import 'package:flutter/material.dart';

import 'dataclass.dart';
import 'apiservices.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Service serviceAPI=Service();
  late Future<List<cData>> listData;

  @override

  void initState(){
    super.initState();
    listData = serviceAPI.getAllData();

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Percobaan API',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Percobaan Pertama"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: FutureBuilder<List<cData>>(
            future: listData,
            builder: (context,snapshot){
              if(snapshot.hasData){
                List<cData> isiData = snapshot.data!;
                return ListView.builder(
                  itemCount: isiData.length,
                  itemBuilder: (context,index) {
                    return ListTile(
                        title: Text(isiData[index].cnama)
                    );
                  },
                );
              }
              else(snapshot.hasError){

                  return Text("${snapshot.error}");
              };
              return const CircularProgressIndicator();
              }
          )
          )
        ),
      ),
    );
  }
}
