import 'package:get/get.dart';
import 'package:milk_delivery/pages/calendar/calendar_controller.dart';

import 'package:milk_delivery/pages/dashboard/dashboard_controller.dart';
import 'package:milk_delivery/pages/home/home_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<CalendarController>(() => CalendarController());
  }
}
