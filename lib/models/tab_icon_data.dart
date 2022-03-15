import 'package:flutter/material.dart';

class TabIconData {
  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;
  AnimationController? animationController;

  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });
}
