import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery/pages/add/add_page.dart';
import 'package:milk_delivery/pages/dashboard/dashboard_controller.dart';
import 'package:milk_delivery/pages/home/home_page.dart';
import 'package:milk_delivery/pages/messages/messages_page.dart';
import 'package:milk_delivery/pages/users/users_page.dart';

import '../../navigation/custom_animated_bottom_bar.dart';

class MyDashBoard extends StatefulWidget {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
        builder: (controller) => Scaffold(
              body: SafeArea(
                  child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  HomePage(),
                  UsersPage(),
                  MessagesPage(),
                  AddPage(),
                ],
              )),
              bottomNavigationBar: CustomAnimatedBottomBar(
                containerHeight: 70,
                backgroundColor: Colors.white,
                selectedIndex: controller.tabIndex,
                showElevation: true,
                itemCornerRadius: 24,
                curve: Curves.easeIn,
                onItemSelected: controller.changeTabIndex,
                items: <BottomNavyBarItem>[
                  BottomNavyBarItem(
                    icon: Icon(Icons.apps),
                    title: Text('Home'),
                    activeColor: Colors.green,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.people),
                    title: Text('Users'),
                    activeColor: Colors.purpleAccent,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.message),
                    title: Text(
                      'Messages ',
                    ),
                    activeColor: Colors.pink,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.settings),
                    title: Text('Settings'),
                    activeColor: Colors.blue,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ));
  }
}
