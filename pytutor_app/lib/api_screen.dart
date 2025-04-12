import 'package:flutter/material.dart';
import 'main.dart';

class Api_Screen extends StatefulWidget {
  @override
  State<Api_Screen> createState() => _Api_ScreenState();
}

class _Api_ScreenState extends State<Api_Screen> {
  // const Api({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('halaman 2')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("BACK"),
          ),
        ],
      ),
    );
  }
}
