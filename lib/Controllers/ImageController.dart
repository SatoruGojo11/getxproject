import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {

  RxString imagepath = ''.obs;

  Future getImagebyCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image != null) {
      imagepath.value = image.path.toString();
    } else {
      return CircularProgressIndicator();
    }
  }

  Future getImagebyGallary() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image != null) {
      imagepath.value = image.path.toString();
    } else {
      return CircularProgressIndicator();
    }
  }
}
