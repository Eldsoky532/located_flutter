import 'dart:ui';

import 'package:get/get.dart';
import 'package:located_flutter/local_storage/local_storage.dart';

class AppLanguage extends GetxController
{
  var applocal='ar';
  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    LocalStorage localStorage=LocalStorage();

    applocal=await localStorage.languageselected == null ? 'ar' :await localStorage.languageselected;
    Get.updateLocale(Locale(applocal));

    update();

  }


  void chanelanguage(String type)
  async{

    LocalStorage localStorage=LocalStorage();

    if(applocal==type)
      {
        return;
      }
    if(type=='ar')
      {
        applocal='ar';
        localStorage.saveLanguageToDisk('ar');
      } else
      {
        applocal='en';
        localStorage.saveLanguageToDisk('en');
      }
    update();
  }



}