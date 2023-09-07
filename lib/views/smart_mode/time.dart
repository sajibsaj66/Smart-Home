import 'package:flutter/material.dart';

import '../common_widget/text_widget.dart';

class Time extends StatelessWidget {
  Time({Key? key, required this.text1, required this.text2}) : super(key: key);

  String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidget(
          text: text1, size: 12, weight: FontWeight.w400, color: Colors.black),
      TextWidget(
          text: text2, size: 14, weight: FontWeight.w600, color: Colors.black)
    ]);
  }
}
