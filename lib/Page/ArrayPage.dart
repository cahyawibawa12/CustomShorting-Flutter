import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../Controller/ArrayController.dart';

class ArrayPage extends StatefulWidget {
  const ArrayPage({super.key});

  @override
  State<ArrayPage> createState() => _ArrayPageState();
}

class _ArrayPageState extends State<ArrayPage> {
  ArrayController combineController = Get.put(ArrayController());

  @override
  void initState() {
    super.initState();
    // combineController.customShort();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Shorting"),
        backgroundColor: Color(0xff34BE82),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Column(children: [
              SizedBox(
                height: 250,
              ),
              Text(
                "Custom Shorting",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Random Array 1 : [2, 3, 1, 3, 2, 4, 6, 7, 9, 2, 19]"),
              SizedBox(
                height: 10,
              ),
              Text("Random Array 2 : [2, 1, 4, 3, 9, 6]"),
              SizedBox(
                height: 10,
              ),
              // Text("Output: " + combineController.result.toString()),
              TextButton(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text(
                    'Shorting',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Color.fromARGB(255, 243, 6, 6),
                      fontSize: 18.0,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                onPressed: () {
                  combineController.customShort();
                },
              ),
              Obx(() => Text("Output: " + combineController.result.toString())),
            ]),
          ),
        ),
      ),
    );
  }
}
