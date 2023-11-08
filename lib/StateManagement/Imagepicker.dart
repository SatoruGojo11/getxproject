import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Controllers/ImageController.dart';

class Imagepickerapp extends StatefulWidget {
  const Imagepickerapp({super.key});

  @override
  State<Imagepickerapp> createState() => _CounterAppState();
}

class _CounterAppState extends State<Imagepickerapp> {
  final ImageController controller = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 300,
                  backgroundImage: controller.imagepath.isNotEmpty
                      ? FileImage(File(controller.imagepath.toString()))
                      : null,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'What do you want to choose :- ',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                child: IconButton.outlined(
                                  onPressed: () {
                                    controller.getImagebyCamera();
                                  },
                                  icon: Icon(
                                    Icons.camera_alt,
                                    size: 30,
                                  ),
                                ),
                                radius: 30,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                child: IconButton.outlined(
                                  onPressed: () {
                                    controller.getImagebyGallary();
                                  },
                                  icon: Icon(
                                    Icons.photo_library,
                                    size: 30,
                                  ),
                                ),
                                radius: 30,
                                backgroundColor: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text(
                  "Pick Image",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          )),
    );
  }
}
