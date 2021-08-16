import 'package:get/get.dart';

class AddController extends GetxController {
  var count = 0.obs;

  void increment() {
    count.value++;
  }
}
