import 'package:flutter/material.dart';
import 'package:flutter_compilation/core.dart';
import '../controller/counter_controller.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  Widget build(context, CounterController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Counter",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "${controller.counter}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () => controller.updateCounter(),
              child: const Text(
                "Update Counter",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () => controller.delteCounter(),
              child: const Text(
                "delete Counter",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CounterView> createState() => CounterController();
}
