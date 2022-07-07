import 'dart:math';

import 'package:flutter/material.dart';
import 'package:calc/main.dart';

class HHasil extends StatefulWidget {
  final List angkanya;
  final List operatornya;

  const HHasil({Key? key, required this.angkanya, required this.operatornya})
      : super(key: key);

  @override
  State<HHasil> createState() => _HHasilState(angkanya, operatornya);
}

class _HHasilState extends State<HHasil> {
  final List angkanya;
  final List operatornya;
  TextEditingController hasil = new TextEditingController();

  _HHasilState(this.angkanya, this.operatornya);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    int total = 0;
    total = total + int.parse(angkanya[0].toString());
    for (var i = 0; i < angkanya.length; i++) {
      if (i >= 1) {
        if (operatornya[i - 1] == "+") {
          total += int.parse(angkanya[i].toString());
        } else if (operatornya[i - 1] == "-") {
          total -= int.parse(angkanya[i].toString());
        } else if (operatornya[i - 1] == "X") {
          total *= int.parse(angkanya[i].toString());
        } else if (operatornya[i - 1] == "/") {
          double hasil = total / angkanya[i];
          total = int.parse(hasil.floor().toString());
        } else if (operatornya[i - 1] == "^") {
          var hasil = pow(total, angkanya[i]);
          total = int.parse(hasil.floor().toString());
        }
      }
      hasil.text += angkanya[i].toString();
      hasil.text += operatornya[i].toString();
    }
    hasil.text += total.toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hasil",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hasil"),
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Text(
                "HASIL: ",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
                controller: hasil,
                style: TextStyle(fontSize: 50),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  onPressed: Navigator.of(context).pop, child: Text("Back")),
            ],
          ),
        ),
      ),
    );
  }
}
