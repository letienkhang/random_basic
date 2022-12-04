import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_basic/app/router/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Application",
    getPages: AppPages.routes,
    initialRoute: AppPages.initial,
  ));
}
