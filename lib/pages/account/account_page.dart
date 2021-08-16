import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery/pages/calendar/calendar_controller.dart';

class AccountPage extends StatelessWidget {
  final CalendarController c = Get.find();
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
