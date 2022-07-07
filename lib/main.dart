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
  final List bulan = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "Mei",
    "Jun",
    "Jul",
    "Agt",
    "Sep",
    "Okt",
    "Nov",
    "Des"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coba Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Coba Widget"),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: ListView.separated(
            separatorBuilder: (context,position){
              if(position % 3==0) {
                return Container(
                    color: Colors.green,
                    child: Text("Ini Separator")
                );
              }else{
                return Divider();
              }
            },
            itemCount: bulan.length,
            itemBuilder: ((context, index) {
              return Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(
                  children: [
                    Text(
                      bulan[index],
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
