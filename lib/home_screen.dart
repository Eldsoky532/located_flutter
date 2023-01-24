import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:located_flutter/controller/app_language.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({Key? key}) : super(key: key);

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  String? selectedvalue = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Directionality(
          textDirection:
              selectedvalue == 'en' ? TextDirection.ltr : TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "login".tr,
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Signup".tr,
                style: TextStyle(fontSize: 32),
              ),
              GetBuilder<AppLanguage>(
                  init: AppLanguage(),
                  builder: (builder) {
                    return DropdownButton(
                        items: [
                          DropdownMenuItem(
                            child: Text('en'),
                            value: 'en',
                          ),
                          DropdownMenuItem(
                            child: Text('ar'),
                            value: 'ar',
                          )
                        ],
                        value: builder.applocal,
                        onChanged: (value) {
                          builder.chanelanguage(value!);
                          Get.updateLocale(Locale(value!));
                        });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
