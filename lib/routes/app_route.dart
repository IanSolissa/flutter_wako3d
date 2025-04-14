import 'package:get/get.dart';

import '../page/main.dart';
import '../page/homepage.dart';

class AppRoutes {
  static const home = '/home1';
  static const homepage = '/homepage/';

  static final routes = [
    GetPage(name: home, page: () => Wako3d()),
    GetPage(name: homepage, page: () => home_screen()),
  ];
}
