import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/StateManagement/CounterApp.dart';
import 'package:getxproject/StateManagement/MarkFavourite.dart';
import 'package:getxproject/StateManagement/Opacityofobj.dart';
import 'package:getxproject/StateManagement/SwitchwithStateManagement.dart';

class GetxStatemanagement extends StatefulWidget {
  const GetxStatemanagement({super.key});

  @override
  State<GetxStatemanagement> createState() => _GetxUtilitiesState();
}

class _GetxUtilitiesState extends State<GetxStatemanagement> {
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
              title: Text('Getx Counter With State Management'),
              subtitle: Text('Check it out!!'),
              onTap: () {
                Get.to(CounterApp());
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(25),
            elevation: 10,
            child: ListTile(
              title: Text('Getx Opacity of Object With State Management'),
              subtitle: Text('You can Incre/Decre Color Shadow Through Slider'),
              onTap: () {
                Get.to(OpacityofObj());
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(25),
            elevation: 10,
            child: ListTile(
              title: Text('Getx Switch any Objectives With State Management'),
              subtitle: Text('You can Switch On/Off Any Items'),
              onTap: () {
                Get.to(SwitchwithSM());
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(25),
            elevation: 10,
            child: ListTile(
              title: Text(
                  'Getx Mark your favourite product With State Management'),
              subtitle: Text('You can like/unlike Any Items'),
              onTap: () {
                Get.to(Markasfavourite());
              },
            ),
          ),
        ],
      ),
    );
  }
}
