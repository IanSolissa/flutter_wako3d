import 'package:flutter/material.dart';
import 'api_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Wako3d()));
}

class Wako3d extends StatefulWidget {
  @override
  State<Wako3d> createState() => _Wako3dState();
}

class _Wako3dState extends State<Wako3d> {
  int index = 1;

  void tambah() {
    setState(() {
      index++;
    });
  }

  void kurang() {
    if (index > 1) {
      setState(() {
        index--;
      });
    } else {
      print("Kurang dari 1 ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("learn flutter")),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text(index.toString()), Text(index.toString())],
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: tambah,
                    child: Text("tambah"),
                  ),
                ),
                Divider(color: Colors.transparent, thickness: 0, height: 60),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: kurang,
                    child: Text("kurang"),
                  ),
                ),
                Divider(color: Colors.transparent, thickness: 0, height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Api_Screen()),
                    );
                  },
                  child: Text("Pindah Halaman"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
