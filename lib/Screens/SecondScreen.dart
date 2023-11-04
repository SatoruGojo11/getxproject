import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/getxutilities.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('This is Second Screen'),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              child: Text(
                'GO back to home Page',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'GO back to First Screen',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
