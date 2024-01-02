import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'internet_exception':
              "We're unable to show results. \n  Please check your data\nconnection",
          'general_exception':
              " We're unable to process your request. \n Please try again later",
          'welcome_back': "Welcome\nBack",
          'login': 'LogIn',
          'email_hint': 'Email',
          'password_hint': 'Password',
          'email': 'Enter Email',
          'password': 'Enter Password',
        },
        'np_NP': {
          'email_hint': 'इमेल प्रविष्ट गर्नुहोस्',
        },
      };
}
