import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/image_widget.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';
import 'package:smart_home/views/smart_mode/time.dart';

class ModeCard extends StatelessWidget {
  ModeCard({Key? key, required this.index}) : super(key: key);

  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  TextWidget(
                      text: 'Smart Lamp',
                      size: 14,
                      weight: FontWeight.w600,
                      color: Colors.black),
                  TextWidget(
                      text: 'dining room | Tue Thu',
                      size: 12,
                      weight: FontWeight.w400,
                      color: Colors.black),
                ]),
                ImageWidget(
                    image: index % 2 == 0
                        ? 'assets/icon_on.png'
                        : 'assets/icon_off.png',
                    width: 55,
                    height: 24),
              ]),
              const SizedBox(height: 6),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(children: [
                  ImageWidget(
                      image: 'assets/img_24.png', width: 40, height: 40),
                  const SizedBox(width: 16),
                  Time(text1: 'from', text2: '8 pm'),
                ]),
                Container(width: 1.5, height: 50, color: hexToColor(texts)),
                Row(children: [
                  Time(text1: 'to', text2: '8 pm'),
                  const SizedBox(width: 16),
                  Container(width: 1, height: 50, color: hexToColor(texts)),
                  const SizedBox(width: 16),
                  Column(children: [
                    GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.delete_outline,
                            color: hexToColor(texts))),
                    GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.note_alt_outlined,
                            color: hexToColor(texts))),
                  ]),
                ]),
              ]),
            ]));
  }
}
