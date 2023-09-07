import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  const Boxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 95,
        width: 85,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20)));
  }
}
