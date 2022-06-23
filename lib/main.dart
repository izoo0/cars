import 'package:cars/views/HomeView.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "RentAV",
                style: TextStyle(
                    color: Color.fromARGB(255, 59, 59, 59),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: HomeView(),
          ),
        ),
      ),
    );
  }
}
