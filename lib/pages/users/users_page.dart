import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery/pages/add/add_controller.dart';

class UsersPage extends StatelessWidget {
  final AddController c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Obx(
            () => Text(
              "Users number  ${c.count}",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
