import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter Email',
          'internet_exception':
              "We're unable to show results. \n  Please check your data\nconnection",
          'general_exception':
              " We're unable to process your request. \n Please try again later",
        },
        'np_NP': {
          'email_hint': 'इमेल प्रष्ट गर्नुहोस्',
        },
      };
}
