import 'dart:async';

import 'package:get/get.dart';

import '../../resources/routes/routes_name.dart';

class SplashServices {
  void islogin() {
    Timer(const Duration(milliseconds: 10),
        () => Get.toNamed(RouteName.loginView));
  }
}
