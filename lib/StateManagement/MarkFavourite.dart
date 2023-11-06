import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Controllers/FavouritesController.dart';

class Markasfavourite extends StatefulWidget {
  const Markasfavourite({super.key});

  @override
  State<Markasfavourite> createState() => _MarkasfavouriteState();
}

class _MarkasfavouriteState extends State<Markasfavourite> {
  Favouritescontroller fvcontroller = Get.put(Favouritescontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(fvcontroller.products[index].toString()),
            trailing: Obx(
              () => IconButton(
                onPressed: () {
                  fvcontroller.makefavourite(index);
                },
                icon: fvcontroller.liked.contains(fvcontroller.products[index].toString())
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite_border,
                      ),
              ),
            ),
          );
        },
        itemCount: fvcontroller.products.length,
      ),
    );
  }
}
