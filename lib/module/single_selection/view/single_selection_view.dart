
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
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
      ),
    );
  }

  @override
  State<SingleSelectionView> createState() => SingleSelectionController();
}
    