import 'package:flutter/material.dart';
// import '../api_screen.dart';
import '../widgets/mybutton.dart';
import '../routes/app_route.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(
    GetMaterialApp(
      // MaterialApp(
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
      home: Wako3d(),
      getPages: AppRoutes.routes,
    ),
  );
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

  String world(String params) {
    return 'hello world';
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
                  child: Mybutton(
                    // text: world("Hello World"),
                    text: "Kurang",
                    onPressed: kurang,
                  ),
                ),
                Divider(color: Colors.transparent, thickness: 0, height: 60),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => AddressPage()),
                //     );
                //   },
                //   child: Text("Pindah Halaman"),
                // ),
                ElevatedButton(
                  onPressed:
                      () => Get.toNamed(
                        AppRoutes.homepage,
                        arguments: "HALLO", // Mengirimkan argumen
                      ),
                  child: Text("Routing ke homepage"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
