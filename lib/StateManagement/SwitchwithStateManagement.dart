import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Controllers/ItemSwithController.dart';

class SwitchwithSM extends StatefulWidget {
  const SwitchwithSM({super.key});

  @override
  State<SwitchwithSM> createState() => _SwitchwithSMState();
}

class _SwitchwithSMState extends State<SwitchwithSM> {
  ItemSwitchController controller = Get.put(ItemSwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch With State Management'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Notifications'),
          Obx(
            () => Switch(
              value: controller.Switch.value,
              onChanged: (value) => controller.switchctrl(value),
            ),
          ),
        ],
      ),
    );
  }
}
