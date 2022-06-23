import 'package:cars/constants/ConstBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  final dynamic itemData;

  const HomeView({Key? key, this.itemData}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey,
                suffixIcon: Icon(Icons.search_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Search...',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Boxed1(),
              Positioned(
                bottom: 20,
                left: 25,
                child: Text('Details',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w800)),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 60,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Order Now'),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
