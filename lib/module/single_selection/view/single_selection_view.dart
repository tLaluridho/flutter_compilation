import 'package:flutter/material.dart';
import 'package:flutter_compilation/core.dart';
import '../controller/single_selection_controller.dart';

class SingleSelectionView extends StatefulWidget {
  const SingleSelectionView({Key? key}) : super(key: key);

  Widget build(context, SingleSelectionController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleSelection"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "${controller.selectedIndex}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.category.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.category[index];
                  bool selected = controller.selectedIndex == index;
                  return Card(
                    color: selected ? Colors.black : Colors.white,
                    child: ListTile(
                      onTap: () => controller.updateIndex(index),
                      title: Text(
                        "$item",
                        style: TextStyle(color: selected ? Colors.white : null),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SingleSelectionView> createState() => SingleSelectionController();
}
