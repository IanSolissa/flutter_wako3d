import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'test.dart';

void main(List<String> args) {
  runApp(Redirect2());
}

class Redirect2 extends StatefulWidget {
  // const Redirect2({super.key});

  @override
  State<Redirect2> createState() => _Redirect2State();
}

class _Redirect2State extends State<Redirect2> {
  int index = 1;

  int Tambah(int params) {
    // setState(() {
    // int result=index+params;
    return index++;
    // });
  }

  void Tambah2() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Redirect2")),
        body: Column(
          children: [
            Text(index.toString()),
            ElevatedButton(
              onPressed:
                  // return
                  // () {
                  // setState(() {
                  //   Tambah(1);
                  // });
                  // },
                  // Void
                  Tambah2,
              child: Text("Tambah"),
            ),
          ],
        ),
      ),
    );
  }
}
