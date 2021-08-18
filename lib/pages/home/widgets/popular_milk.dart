import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery/Controllers/product_Controller.dart';

class PopularMilk extends StatelessWidget {
  final c = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return GetX<ProductController>(
        builder: (controller) => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.products.length,
            itemBuilder: (context, index) => Container(
                  //height: 20,
                  width: MediaQuery.of(context).size.width - 70,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      '${controller.products[index].imageUrl}'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        height: 100,
                        padding: EdgeInsets.only(left: 15, right: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${controller.products[index].title}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              '${controller.products[index].litres} ml 1 L Bottle'
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            Text(
                              'Rating is ${controller.products[index].rating}'
                                  .toString(),
                              style: TextStyle(fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Ksh ${controller.products[index].price}'
                                      .toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        style: ButtonStyle(
                                          side: MaterialStateProperty.all(
                                              BorderSide(
                                                  width: 1,
                                                  color: Colors.green)),
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.green),
                                          textStyle: MaterialStateProperty.all(
                                              TextStyle(fontSize: 15)),
                                        ),
                                        onPressed: () {},
                                        child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Row(children: [
                                              Text(
                                                'ADD',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(Icons.add),
                                            ]))),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                )));
  }
}
