import 'package:flutter/material.dart';

import '../common_widget/text_widget.dart';

class Usages extends StatelessWidget {
  Usages({Key? key, required this.title, required this.unit}) : super(key: key);

  String title, unit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
            text: title,
            size: 12,
            weight: FontWeight.w400,
            color: Colors.white),
        TextWidget(
            text: unit, size: 16, weight: FontWeight.w400, color: Colors.white),
      ],
    );
  }
}
