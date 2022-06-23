import 'package:flutter/material.dart';

class Boxed1 extends StatelessWidget {
  // final double height, width;
  // final Widget child;
  final dynamic itemData;

  const Boxed1({
    Key? key,
    // required this.height,
    // required this.width,
    // required this.child,
    this.itemData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(52, 12, 12, 12),
            offset: Offset(-2, 6),
            blurStyle: BlurStyle.normal,
            spreadRadius: 5,
            blurRadius: 15,
          )
        ],
      ),
      child: Column(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/R (1).png',
                height: 170,
                width: 170,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Tesla"),
                  Text('Model X'),
                ],
              ),
              Column(
                children: [
                  Text('Ksh6000'),
                  Text('/month'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
