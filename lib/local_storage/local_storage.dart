import 'package:get_storage/get_storage.dart';

class LocalStorage
{
  ///write
  void saveLanguageToDisk(String language)
  async{

    await GetStorage().write('language', language);

  }

  ///Read
  Future<String> get languageselected
 async {
    return await GetStorage().read('language');
  }
}