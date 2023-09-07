import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class Frame11 extends StatelessWidget {
  Frame11(
      {Key? key,
      required this.iconData,
      required this.text1,
      required this.text2,
      required this.text3})
      : super(key: key);

  IconData iconData;
  String text1, text2, text3;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: (MediaQuery.of(context).size.width - 93) / 3,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8)),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Icon(iconData, color: hexToColor(iconColor))),
            const SizedBox(width: 4),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextWidget(
                  text: text2,
                  size: 18,
                  weight: FontWeight.w600,
                  color: Colors.black),
              TextWidget(
                  text: text3,
                  size: 12,
                  weight: FontWeight.w600,
                  color: Colors.black),
            ]),
          ]),
          TextWidget(
              text: text1,
              size: 12,
              weight: FontWeight.w400,
              color: Colors.black),
        ]));
  }
}
