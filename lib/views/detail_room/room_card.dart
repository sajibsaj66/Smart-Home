import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class RoomCard extends StatelessWidget {
  RoomCard(
      {Key? key,
      required this.icon,
      required this.text1,
      required this.text2,
      required this.text3})
      : super(key: key);

  IconData icon;
  String text1, text2, text3;

  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Icon(icon, size: 40, color: hexToColor(mains2)),
      const SizedBox(
        width: 5,
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          TextWidget(
              text: text1,
              size: 18,
              weight: FontWeight.w600,
              color: hexToColor(mains2)),
          TextWidget(
              text: text2,
              size: 14,
              weight: FontWeight.w600,
              color: hexToColor(mains2)),
        ]),
        TextWidget(
            text: text3,
            size: 12,
            weight: FontWeight.w400,
            color: hexToColor(mains2)),
      ]),
    ]));
  }
}
