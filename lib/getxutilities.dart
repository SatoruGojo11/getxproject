import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Utilities/ChangeLanguageScreen.dart';
import 'package:getxproject/Utilities/ThirdScreen.dart';

class GetxUtilities extends StatefulWidget {
  const GetxUtilities({super.key});

  @override
  State<GetxUtilities> createState() => _GetxUtilitiesState();
}

class _GetxUtilitiesState extends State<GetxUtilities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GetX Tutorials',
        ),
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(25),
            elevation: 10,
            child: ListTile(
              title: Text('Getx Alert/Simple Dialog'),
              subtitle: Text('This is your Chat'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure?',
                  textConfirm: 'Yes',
                  confirmTextColor: Colors.black,
                  textCancel: 'No',
                  cancelTextColor: Colors.black,
                  // content: Column(
                  //   children: [
                  //     Text('User 1'),
                  //     Text('User 1'),
                  //     Text('User 1'),
                  //     Text('User 1'),
                  //     Text('User 1'),
                  //     Text('User 1'),
                  //   ],
                  // ),
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(25),
            elevation: 10,
            child: ListTile(
              title: Text('Getx Snackbar'),
              subtitle: Text('This is your Snackbar'),
              onTap: () {
                // Getx Snackbar
                Get.snackbar(
                  'Jaydip Shingala',
                  'This is Getx Snackbar!!',
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.amber,
                  icon: Icon(
                    Icons.account_circle,
                    size: 40,
                  ),
                );
                // Normal Snackbar
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('Jaydip Shingala'),
                //     backgroundColor: Colors.red,
                //     dismissDirection: DismissDirection.startToEnd,
                //   ),
                // );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(25),
            elevation: 10,
            child: ListTile(
              title: Text('Getx Bottom Sheet'),
              subtitle: Text('DO you want to change App theme?'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Light Theme'),
                          leading: Icon(Icons.light_mode),
                          onTap: () {
                            print('light mode');
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          title: Text('Dark Theme'),
                          leading: Icon(Icons.dark_mode),
                          onTap: () {
                            print('dark mode');
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(25),
            elevation: 10,
            child: ListTile(
              title: Text('Getx Navigation'),
              subtitle: Text('Go to First Screen'),
              onTap: () {
                // Get.to(FirstScreen());
                Get.toNamed('/s1', arguments: ["Jaydip Shingala", "20"]);
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(25),
            elevation: 10,
            child: ListTile(
              title: Text('Getx Height & Width'),
              subtitle: Text('Check it out!!'),
              onTap: () {
                Get.to(ThirdScreen());
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(25),
            elevation: 10,
            child: ListTile(
              title: Text('Getx App Language'),
              subtitle: Text('Check it out!!'),
              onTap: () {
                Get.to(ChangeLanguages());
              },
            ),
          ),
        ],
      ),
    );
  }
}











