

import 'package:get/get.dart';
import 'package:located_flutter/utils/ar.dart';
import 'package:located_flutter/utils/en.dart';

class Translation extends Translations
{


  @override
  Map<String, Map<String, String>> get keys=> {
    'en': en,
    'ar':ar
  };
}