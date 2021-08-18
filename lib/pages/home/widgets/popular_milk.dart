import 'package:flutter/material.dart';

class PopularMilk extends StatelessWidget {
  const PopularMilk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Container(
                child: Column(
                  children: [],
                ),
              )),
    );
  }
}
