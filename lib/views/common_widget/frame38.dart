import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class Frame38 extends StatelessWidget {
  Frame38({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(8),
            strokeWidth: 6,
            dashPattern: const [15, 10],
            color: hexToColor(mains2),
            padding: EdgeInsets.zero,
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                alignment: Alignment.center,
                child: TextWidget(
                    text: text,
                    size: 14,
                    weight: FontWeight.w600,
                    color: Colors.black))));
  }
}
