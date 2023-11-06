import 'package:get/get.dart';

class ItemSwitchController extends GetxController {
  RxBool Switch = false.obs;

  switchctrl(bool value) {
    Switch.value = value;
  }
}
