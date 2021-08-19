import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'full_cream_milk.dart';

class AllMilk extends StatelessWidget {
  const AllMilk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Milk',
              style: TextStyle(fontSize: 16, color: Colors.black)),
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
            indicatorColor: Colors.green,
            isScrollable: true,
            tabs: [
              Tab(
                  child: Text(
                'Full cream Milk',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Toned Milk',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Cow Milk',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Tetro Milk',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Farmented Milk',
                style: TextStyle(color: Colors.black),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              // height: double.infinity,
              child: FullCreamMilk(),
            ),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_bike, size: 350),
            Icon(Icons.directions_boat, size: 350),
          ],
        ),
      ),
    );
  }
}

// class FullCreamMilk extends StatelessWidget {
//   const FullCreamMilk({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding:
//                 const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('12 items'),
//                 Row(
//                   children: [
//                     Icon(Icons.filter_list_alt),
//                     Text('Filters'),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           Card(
//               child: Row(
//             children: [
//               Expanded(
//                   flex: 1,
//                   child: Container(
//                     height: 100,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage('assets/images/milk5.png'),
//                             fit: BoxFit.fill)),
//                   )),
//               Expanded(
//                   flex: 2,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Rogaz-Full cream milk'),
//                       Row(
//                         children: [
//                           Text('500 Ml 1 L Bottle *'),
//                           Icon(
//                             Icons.star,
//                             color: Colors.yellow,
//                           ),
//                           Text('4.2'),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text('Ksh 80'),
//                           Container(
//                               margin: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   border: Border(
//                                       bottom: BorderSide(width: 0.5),
//                                       right: BorderSide(width: 0.5),
//                                       top: BorderSide(width: 0.5),
//                                       left: BorderSide(width: 0.5))),
//                               child: Row(
//                                 children: [
//                                   GestureDetector(
//                                       onTap: () {}, child: Icon(Icons.remove)),
//                                   Container(
//                                       color: Colors.green.shade100,
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(6.0),
//                                         child: Text('1'),
//                                       )),
//                                   GestureDetector(
//                                       onTap: () {}, child: Icon(Icons.add))
//                                 ],
//                               ))
//                         ],
//                       )
//                     ],
//                   )),
//             ],
//           ))
//         ],
//       ),
//     );
//   }
// }
