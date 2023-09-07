import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/detail_room/detail_room_screen.dart';

import '../common_widget/text_widget.dart';

class Frame41 extends StatelessWidget {
  Frame41(
      {Key? key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4})
      : super(key: key);

  String image, text1, text2, text3, text4;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DetailRoomScreen()));
        },
        child: Container(
            width: (MediaQuery.of(context).size.width - 55) / 2,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: hexToColor(roombg)),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    width: 45,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: hexToColor(mains2)),
                    child: Stack(alignment: Alignment.topRight, children: [
                      Positioned(
                          left: 12,
                          child: TextWidget(
                              text: text1,
                              size: 14,
                              weight: FontWeight.w600,
                              color: Colors.white)),
                      Positioned(
                          top: 2,
                          left: 28,
                          child: Container(
                              height: 4,
                              width: 4,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(50)))),
                      Positioned(
                          left: 30,
                          bottom: 1,
                          child: TextWidget(
                              text: 'c',
                              size: 12,
                              weight: FontWeight.w400,
                              color: Colors.white)),
                    ])),
              ]),
              Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(image, fit: BoxFit.fill)),
              Container(
                  child: Column(children: [
                TextWidget(
                    text: text2,
                    size: 18,
                    weight: FontWeight.w600,
                    color: Colors.black),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: hexToColor(surface4)),
                      child: TextWidget(
                          text: text3,
                          size: 12,
                          weight: FontWeight.w600,
                          color: Colors.black)),
                  const SizedBox(
                    width: 3,
                  ),
                  TextWidget(
                      text: text4,
                      size: 12,
                      weight: FontWeight.w400,
                      color: Colors.black),
                ]),
              ])),
            ])));
  }
}
