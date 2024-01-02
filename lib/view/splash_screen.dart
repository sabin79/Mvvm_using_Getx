import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/routes/assects/image_assects.dart';
import 'package:getx_mvvm/resources/routes/components/internet_exceptions_widget.dart';
import 'package:getx_mvvm/resources/routes/components/round_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    //return InternetExceptionWidget();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("email_hint".tr)),
      ),
      body: Column(
        children: [
          Center(
              child: RoundBUtton(
            title: 'Login',
            onPress: () {},
            loading: true,
          )),
          const SizedBox(height: 20),
          Center(child: RoundBUtton(title: 'signup', onPress: () {}))
        ],
      ),
    );
  }
}
