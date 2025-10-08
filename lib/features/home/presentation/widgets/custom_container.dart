import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.color,
    required this.name,
    this.onTap,
  });
  final Color color;
  final String name;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        padding: EdgeInsets.all(8),
        height: 70,
        width: double.infinity,
        child: Text(name, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
