// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/dataclass.dart';
import 'package:firebase/dbservices.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: "FIREBASE CRUD",
    home: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
 MyApp({Key? key}) : super(key: key);

  int _jumlah=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("FIREBASE CRUD"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _jumlah++;
          final dtBaru=itemCatatan(itemJudul: _jumlah.toString(), itemIsi: "333");
          Database.tambahData(item: dtBaru);
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Database.getData(),
        builder: (context, snapshot){
          if(snapshot.hasError){
            return Text('Error');
          }else if (snapshot.hasData||snapshot.data!=null){
            return ListView.separated(
              itemBuilder: (context, index){
                DocumentSnapshot dsData = snapshot.data!.docs[index];
                String lvJudul=dsData['judulCat'];
                String lvIsi=dsData['isiCat'];
                _jumlah=snapshot.data!.docs.length;
                return ListTile(
                  onTap: (){
                    final dtBaru=itemCatatan(itemJudul: lvJudul, itemIsi: lvIsi+"n");
                    Database.ubahData(item: dtBaru);
                  },
                  onLongPress: (){
                    Database.hapusData(judulhapus: lvJudul);
                  },
                  title: Text(lvJudul),
                  subtitle: Text(lvIsi),
                );
              },
              separatorBuilder: (context, index)=>SizedBox(height:8.0),
               itemCount: snapshot.data!.docs.length
            );
          }
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.pinkAccent,
              ),
            ),
          );
        },
      )
    );
  }
}