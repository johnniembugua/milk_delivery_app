import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery/pages/Reusables/custom_text.dart';
import 'package:milk_delivery/pages/home/home_controller.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      // appBar: AppBar(
      //   title: Text(
      //     controller.title,
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(6.0),
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 24,
                ),
                Flexible(
                  child: CustomText(
                    text: 'HN-306 First floor, Agwarwal, Nairobi,Kenya',
                    maxlines: 1,
                    size: 24,
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.black,
                  ),
                  hintText: 'Search milk type, brand.....'),
            ),
          )
        ],
      ),
    );
  }
}
