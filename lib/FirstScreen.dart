import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/getxutilities.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text('This is Our Home Page'),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'GO back',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
