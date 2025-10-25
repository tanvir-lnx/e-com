import 'package:get/get.dart';

class LanguageLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      "name": 'Name',
      'home': 'Home',
      'all_category': 'All Categories',
      'see_all': 'See All',
    },
    'bn_BD': {
      'name': 'নাম',
      'home': 'হোম',
      'all_category': 'সকল শ্রেণী',
      'see_all': 'সব দেখুন',
    },
  };
}
