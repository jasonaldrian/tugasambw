import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/dataclass.dart';

CollectionReference tblCatatan = FirebaseFirestore.instance.collection("tabelCatatan");
class Database{
  static Stream<QuerySnapshot> getData(){
    return tblCatatan.snapshots();
  }
  static Future<void> tambahData({required itemCatatan item}) async{
    DocumentReference docRef = tblCatatan.doc(item.itemJudul);
    await docRef
    .set(item.toJson())
    .whenComplete(() => print("data berhasil disimpan"))
    .catchError((e)=>print(e));
  }
  static Future<void> ubahData({required itemCatatan item})async{
    DocumentReference docRef =tblCatatan.doc(item.itemJudul);

   await docRef
    .update(item.toJson())
    .whenComplete(() => print("data berhasil disimpan"))
    .catchError((e)=>print(e));
  }
  static Future<void> hapusData({required String judulhapus})async{
      DocumentReference docRef = tblCatatan.doc(judulhapus);

      await docRef
      .delete()
      .whenComplete(() => print("data berhasil dihapus"));
  }
}