import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_practice/controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GetX Counter')),
        body: Center(
          child: Obx(() => Text(
            'Count: ${controller.count}',
            style: TextStyle(fontSize: 30),
          )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.increment,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
