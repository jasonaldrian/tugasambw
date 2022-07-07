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
  List<String> Negara = [
    'Indonesia',
    'Amerika',
    'Belanda',
    'Korea',
    'Kroasia',
    'Jepang',
    'Singapore',
    'Malaysia',
    'China',
    'Russia',
    'Jerman',
    'Philippines',
    'Romania',
    'Ukraina',
    'Uzbekistan',
    'Kazakhztan',
    'Turkmenistan'
  ];

  TextEditingController _negara = TextEditingController();
  void tambahData() {
    setState(() {
      Negara.add(_negara.text.toString());
      Negara.sort();
    });
  }

  @override
  void dispose() {
    _negara.dispose();
    super.dispose();
  }

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
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                TextField(
                  controller: _negara,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Masukan Nama Negara'),
                ),
                SizedBox(
                  height: (10),
                ),
                ElevatedButton(
                  onPressed: () {
                    tambahData();
                  },
                  child: Text('Tambah Data'),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: Negara.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                          key: Key(Negara[index]),
                          background: Container(alignment: Alignment.centerLeft,
                          color: Colors.green,
                          child: Icon(Icons.check)),
                          secondaryBackground: Container(
                            alignment: Alignment.centerRight,
                            color: Colors.red,
                            child: Icon(Icons.cancel),
                          ),
                          confirmDismiss: (direction)async{
                            if(direction==DismissDirection.endToStart){
                              return false;
                            }else{
                              return true;
                            }
                          },
                          onDismissed: (direction){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('${Negara[index]} dismissed'),),);
                          },
                          child: ListTile(
                              title: Text(Negara[index],),
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(Negara[index]),
                                  ),
                                );
                                Negara.removeAt(index);
                              },
                          ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
