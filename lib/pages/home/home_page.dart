import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:milk_delivery/pages/Reusables/custom_text.dart';
import 'package:milk_delivery/pages/home/home_controller.dart';
import 'package:milk_delivery/pages/home/widgets/popular_milk.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    //final ProductController productController = Get.put(ProductController());
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white24,
      body: SingleChildScrollView(
        child: Column(
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
                controller: textEditingController,
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
            ),
            Container(
              width: double.infinity,
              height: 180,
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: CustomText(
                                text: 'Set Schedule for your repeated delivery',
                                maxlines: 2,
                                color: Colors.white,
                                size: 20,
                                weight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Flexible(
                              child: CustomText(
                                text:
                                    'Get them delivered everyday to your doorstep',
                                maxlines: 2,
                                color: Colors.white,
                                size: 18,
                                weight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Know more',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/images/milk5.png'),
                            fit: BoxFit.fill,
                          )),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Milk',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('See All'),
                          SizedBox(width: 5),
                          Icon(
                            Icons.chevron_right_outlined,
                            // size: 15,
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              height: 210,
              child: PopularMilk(),
            )
          ],
        ),
      ),
    );
  }
}
