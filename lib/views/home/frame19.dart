import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class Frame19 extends StatelessWidget {
  Frame19(
      {Key? key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3})
      : super(key: key);

  String image, text1, text2, text3;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.only(right: 8),
          child: Image.asset(image, fit: BoxFit.fill)),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextWidget(
              text: text1,
              size: 20,
              weight: FontWeight.w600,
              color: Colors.white),
          TextWidget(
              text: text2,
              size: 12,
              weight: FontWeight.w400,
              color: Colors.white),
        ]),
        TextWidget(
            text: text3, size: 8, weight: FontWeight.w400, color: Colors.white),
      ]),
    ]);
  }
}
