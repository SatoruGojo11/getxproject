import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Height & Width'),
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height * 0.7,
        height: Get.height * 0.7,
        width: Get.width * 0.5,
        color: Colors.amber,
        child: Center(
          child: Text('Hello Everyone...'),
        ),
      ),
    );
  }
}
