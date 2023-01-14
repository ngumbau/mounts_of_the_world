import 'package:flutter/material.dart';

class BottomBarItem {
  IconData? icon;
  bool isSelected;
  String label;

  BottomBarItem({this.icon, required this.label, required this.isSelected});
}
