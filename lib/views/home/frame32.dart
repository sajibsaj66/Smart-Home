import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/detail_item/detail_item_sceen.dart';

import '../common_widget/text_widget.dart';

class Frame32 extends StatelessWidget {
  Frame32({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text5,
    required this.text4,
  }) : super(key: key);

  String image, text1, text2, text3, text4, text5;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailItemScreen()));
      },
      child: Container(
          width: (MediaQuery.of(context).size.width - 45) / 2,
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: hexToColor(button)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Container(
                  width: 75,
                  height: 75,
                  child: Image.asset(image, fit: BoxFit.fill)),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                TextWidget(
                    text: text1,
                    size: 12,
                    weight: FontWeight.w400,
                    color: Colors.white),
                TextWidget(
                    text: text2,
                    size: 18,
                    weight: FontWeight.w600,
                    color: Colors.white),
              ]),
            ]),
            Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: text3,
                                size: 18,
                                weight: FontWeight.w600,
                                color: Colors.white),
                            TextWidget(
                                text: text4,
                                size: 12,
                                weight: FontWeight.w400,
                                color: Colors.white),
                          ]),
                      Image.asset('assets/icon_off.png', height: 24, width: 55),
                    ])),
          ])),
    );
  }
}
