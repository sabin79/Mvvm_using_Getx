import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/routes/assects/image_assects.dart';
import 'package:getx_mvvm/resources/routes/colors/app_colros.dart';
import 'package:getx_mvvm/resources/routes/components/internet_exceptions_widget.dart';
import 'package:getx_mvvm/resources/routes/components/round_button.dart';
import 'package:getx_mvvm/view_models/sevices/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();

  @override
  void initState() {
    // TODO: implement initState

    splashScreen.islogin();
  }

  @override
  Widget build(BuildContext context) {
    //return InternetExceptionWidget();
    return Scaffold(
      backgroundColor: Colors.teal,
      // body: Column(
      //   children: [
      //     Center(
      //         child: RoundButton(
      //       title: 'Login',
      //       onPress: () {},
      //       loading: true,
      //     )),
      //     const SizedBox(height: 20),
      //     Center(child: RoundButton(title: 'signup', onPress: () {}))
      //   ],
      // ),
      body: Center(
          child: Text(
        'welcome_back'.tr,
        textAlign: TextAlign.center,
        style: const TextStyle(color: AppColors.blackColor, fontSize: 30),
      )),
    );
  }
}
