import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view/repository/login_repository.dart';

class LoginVIewModel extends GetxController {
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'emial': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      print(value);
      if (value['erroe'] == 'user not fount') {
        Utils.SnackBar('Login', value['error']);
      } else {
        Utils.SnackBar('Login', 'Login Successfully');
      }
    }).onError((error, stackTrace) {
      print(error.toString());
      loading.value = false;

      Utils.SnackBar('Error', error.toString());
    });
  }
}
