import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Languages.dart';
import 'package:getxproject/Screens/FirstScreen.dart';
import 'package:getxproject/Screens/SecondScreen.dart';
import 'package:getxproject/getxutilities.dart';
import 'package:getxproject/home_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: GetxUtilities(),
      translations: Languages(),
      locale: Locale('gu','IN'),
      fallbackLocale: Locale('en', 'US'),
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/s1', page: () => FirstScreen()),
        GetPage(name: '/s2', page: () => SecondScreen()),
      ],
    ),
  );
}
