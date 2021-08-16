import 'package:get/get.dart';

class CalendarController extends GetxController {
  var count = 0.obs;

  void increment() {
    count.value++;
  }
}
