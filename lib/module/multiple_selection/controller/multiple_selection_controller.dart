import 'package:flutter/material.dart';
import 'package:flutter_compilation/core.dart';
import '../view/multiple_selection_view.dart';

class MultipleSelectionController extends State<MultipleSelectionView> {
  static late MultipleSelectionController instance;
  late MultipleSelectionView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List<Map<String, dynamic>> category = [
    // "Sembako",
    // "snack",
    // "minuman",
    // "Baju",
    // "Celana",
    {
      "label": "Sembako",
    },
    {
      "label": "Snack",
    },
    {
      "label": "Minuman",
    },
    {
      "label": "Baju",
    },
    {
      "label": "Celana",
    },
  ];

  updateIndex(int newIndex) {
    if (category[newIndex]["selected"] == true) {
      category[newIndex]["selected"] = false;
    } else {
      category[newIndex]["selected"] = true;
    }
    setState(() {});
  }

  List getValues() {
    return category.where((i) => i["selected"] == true).toList();
  }

  doSave() {
    var selectedValue = getValues();
    print(selectedValue);
  }
}
