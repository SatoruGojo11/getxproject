import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/getxstatemanagement.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const GetxStatemanagement(),
    ),
  );
}
