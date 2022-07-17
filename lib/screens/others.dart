import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter/controllers/counterController.dart';

class OtherScreens extends StatelessWidget {
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
              "Screen was clicked ${_counterController.counter.value} times"),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Open Other Screen")))
      ]),
    ));
  }
}
