import 'package:flutter/material.dart';

class CategoryItem {
  final String text;
  final String imgUrl;
  bool isSelected;
  Color color;

  CategoryItem({
    required this.text,
    required this.imgUrl,
    this.isSelected = false,
    this.color = const Color(0xffCECFBB),
  });
}
