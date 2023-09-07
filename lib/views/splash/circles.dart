import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  Circles({Key? key, required this.height, required this.width})
      : super(key: key);

  double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50)));
  }
}
