import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery/pages/GoldPoints/gold_points.dart';
import 'package:milk_delivery/pages/account/account_page.dart';

import 'package:milk_delivery/pages/calendar/calendar.dart';
import 'package:milk_delivery/pages/dashboard/dashboard_controller.dart';
import 'package:milk_delivery/pages/home/home_page.dart';

import 'package:milk_delivery/pages/wallet/wallet_page.dart';

import '../../navigation/custom_animated_bottom_bar.dart';

class MyDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _inactiveColor = Colors.grey;
    return GetBuilder<DashBoardController>(
        builder: (controller) => Scaffold(
              body: SafeArea(
                  child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  HomePage(),
                  CalendarPage(),
                  WalletPage(),
                  GoldPoints(),
                  AccountPage(),
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
                    icon: Icon(Icons.home_filled),
                    title: Text('Home'),
                    activeColor: Colors.green,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.calendar_today),
                    title: Text('Calendar'),
                    activeColor: Colors.purpleAccent,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    title: Text(
                      'Wallet ',
                    ),
                    activeColor: Colors.pink,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.redeem_outlined),
                    title: Text(
                      'Gold Points ',
                    ),
                    activeColor: Colors.purpleAccent,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.perm_identity_outlined),
                    title: Text('Profile'),
                    activeColor: Colors.blue,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ));
  }
}
