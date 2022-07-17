import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter/controllers/counterController.dart';
import 'package:web_flutter/screens/others.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("Clicks: ${counterController.counter.value}"),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(OtherScreens());
                      },
                      child: Text("Open Other Screen")),
                )
              ],
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increments();
          },
          child: Icon(Icons.add),
        ));
  }
}
