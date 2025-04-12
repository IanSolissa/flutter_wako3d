import 'package:flutter/material.dart';
import 'api_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: wako3d()));
}

class wako3d extends StatelessWidget {
  // const wako3d({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("2")),
      body: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Api_Screen()),
          );
        },
        child: Text("Pindah"),
      ),
    );
  }
}
