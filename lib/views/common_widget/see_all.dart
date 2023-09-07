import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

import '../../constants.dart';

class SeeAll extends StatelessWidget {
  SeeAll(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      this.widget,
      this.color})
      : super(key: key);

  String text1, text2, text3;
  Color? color;
  Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          TextWidget(
              text: text1,
              size: 18,
              weight: FontWeight.w600,
              color: Colors.black),
          Visibility(
              visible: text3 == '' ? false : true,
              child: Container(
                  height: 21,
                  width: 21,
                  margin: const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: hexToColor(mains2)),
                  alignment: Alignment.center,
                  child: TextWidget(
                      text: text3,
                      size: 14,
                      weight: FontWeight.w600,
                      color: Colors.white))),
        ]),
        GestureDetector(
            onTap: () {
              if (text2 == 'See All') {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => widget!));
              }
            },
            child: text2 != 'icon'
                ? TextWidget(
                    text: text2,
                    size: 16,
                    weight: FontWeight.w600,
                    color: hexToColor(mains2))
                : Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3)),
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: color ?? Colors.white),
                    alignment: Alignment.center,
                    child: Icon(Icons.add,
                        color: color == null
                            ? hexToColor(mains2)
                            : Colors.white))),
      ],
    );
  }
}
