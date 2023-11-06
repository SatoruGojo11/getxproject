import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguages extends StatefulWidget {
  const ChangeLanguages({super.key});

  @override
  State<ChangeLanguages> createState() => _ChangeLanguagesState();
}

class _ChangeLanguagesState extends State<ChangeLanguages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Language'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('el', 'US'));
                  },
                  child: Text('English'),
                ),
                SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('hd', 'IN'));
                  },
                  child: Text('Hindi'),
                ),
                SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('gu', 'IN'));
                  },
                  child: Text('Gujarati'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
