import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/routes/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/sevices/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginVM = Get.put(LoginVIewModel());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login".tr),
        backgroundColor: Colors.tealAccent,
        elevation: 20,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: LoginVM.emailController.value,
                  focusNode: LoginVM.emailFocusNode.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      Utils.SnackBar('Email', 'email'.tr);
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) {
                    Utils.fieldFocusChange(
                        context,
                        LoginVM.emailFocusNode.value,
                        LoginVM.passwordFocusNode.value);
                  },
                  decoration: InputDecoration(
                      hintText: 'email_hint'.tr,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: LoginVM.passwordController.value,
                  focusNode: LoginVM.passwordFocusNode.value,
                  obscureText: true,
                  obscuringCharacter: '*',
                  validator: (value) {
                    if (value!.isEmpty) {
                      Utils.SnackBar('Password', 'password'.tr);
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) {},
                  decoration: InputDecoration(
                      hintText: 'password_hint'.tr,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          RoundButton(
            title: 'Login'.tr,
            onPress: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
        ],
      ),
    );
  }
}
