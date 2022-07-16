import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectnoodles/app/translations/app_translations.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "projectNoodles",
      translations: AppTranlations(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'ZA'),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
