import 'package:flutter/material.dart';

class ItemModel {
  final String name;
  final Color color;
  final Function()? onTap;

  ItemModel({required this.name, required this.color, required this.onTap});
}
