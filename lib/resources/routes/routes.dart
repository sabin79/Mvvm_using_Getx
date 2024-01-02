import 'package:get/get.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view/splash_screen.dart';
import 'package:getx_mvvm/view_models/sevices/login_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RouteName.splashScreen,
            page: () => const SplashScreen(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(seconds: 10)),
        GetPage(
            name: RouteName.loginView,
            page: () => const LoginView(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(seconds: 10)),
      ];
}
