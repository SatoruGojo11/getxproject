import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/getxutilities.dart';

class FirstScreen extends StatefulWidget {
  final Name;

  FirstScreen({super.key, this.Name});

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('This is First Screen'),
            Text('Name :- ${Get.arguments[0]}'),
            Text('Age :- ${Get.arguments[1]}'),
            TextButton(
              onPressed: () {
                // Get.to(SecondScreen());
                Get.toNamed('/s2');
              },
              child: Text(
                'GO To Second Screen',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
