import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Controllers/OpacityController.dart';

class OpacityofObj extends StatefulWidget {
  const OpacityofObj({super.key});

  @override
  State<OpacityofObj> createState() => _OpacityofObjState();
}

class _OpacityofObjState extends State<OpacityofObj> {
  final OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Through Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.opacityofobj(value);
                }),
          ),
        ],
      ),
    );
  }
}
