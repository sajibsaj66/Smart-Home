import 'package:flutter/material.dart';

import '../../constants.dart';
import 'text_widget.dart';

class Frame37 extends StatelessWidget {
  Frame37({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
            height: 48,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
                color: hexToColor(button),
                borderRadius: BorderRadius.circular(8)),
            alignment: Alignment.center,
            child: TextWidget(
                text: text,
                size: 16,
                weight: FontWeight.w600,
                color: Colors.white)));
  }
}
