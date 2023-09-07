import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class Frame34 extends StatelessWidget {
  Frame34({Key? key, required this.text1, required this.text2})
      : super(key: key);

  String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(children: [
          TextWidget(
              text: text1,
              size: 18,
              weight: FontWeight.w600,
              color: Colors.black),
          Container(
              height: 22,
              width: 22,
              margin: const EdgeInsets.only(left: 4),
              decoration: BoxDecoration(
                  color: hexToColor(mains2),
                  borderRadius: BorderRadius.circular(4)),
              alignment: Alignment.center,
              child: TextWidget(
                  text: text2,
                  size: 14,
                  weight: FontWeight.w600,
                  color: Colors.white)),
        ]));
  }
}
