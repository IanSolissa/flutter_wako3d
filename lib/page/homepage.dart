import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_route.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // <- gunakan GetMaterialApp
      initialRoute: AppRoutes.homepage,

      debugShowCheckedModeBanner: false,
      home: home_screen(),
      getPages: AppRoutes.routes,
    );
  }
}

class home_screen extends StatelessWidget {
  // const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed:
                () => Get.toNamed(
                  AppRoutes.home,
                  arguments: "Hello dari Homepage", // Mengirimkan argumen
                ),
            child: Text("Balik ke page main"),
          ),
        ],
      ),
    );
  }
}
