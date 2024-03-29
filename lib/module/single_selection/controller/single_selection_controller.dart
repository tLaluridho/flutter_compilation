import 'package:flutter/material.dart';
import 'package:flutter_compilation/core.dart';
import '../view/single_selection_view.dart';

class SingleSelectionController extends State<SingleSelectionView> {
  static late SingleSelectionController instance;
  late SingleSelectionView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List category = [
    "Sembako",
    "snack",
    "minuman",
    "Baju",
    "Celana",
  ];

  int selectedIndex = -1;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
