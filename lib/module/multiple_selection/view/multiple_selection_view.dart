import 'package:flutter/material.dart';
import 'package:flutter_compilation/core.dart';
import '../controller/multiple_selection_controller.dart';

class MultipleSelectionView extends StatefulWidget {
  const MultipleSelectionView({Key? key}) : super(key: key);

  Widget build(context, MultipleSelectionController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("MultipleSelection"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.category.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.category[index];
                  bool selected = item["selected"] == true;
                  return Card(
                    color: selected ? Colors.black : Colors.white,
                    child: ListTile(
                      onTap: () => controller.updateIndex(index),
                      title: Text(
                        "${item["label"]}",
                        style: TextStyle(color: selected ? Colors.white : null),
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () => controller.doSave(),
              child: const Text(
                "Save",
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
  State<MultipleSelectionView> createState() => MultipleSelectionController();
}
