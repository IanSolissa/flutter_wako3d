import 'package:flutter/material.dart';
import 'test2.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: Redirect()));
}

class Redirect extends StatelessWidget {
  const Redirect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Redirect 1")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Redirect2()),
            );
          },
          child: Text("Button"),
        ),
      ),
    );
  }
}
