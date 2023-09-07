import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';

class UsageCard extends StatelessWidget {
  const UsageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: hexToColor(roombg),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 55,
                width: 55,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(
                  'assets/img_24.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: 'Lamp',
                      size: 14,
                      weight: FontWeight.w600,
                      color: hexToColor(texts)),
                  TextWidget(
                      text: 'Kitchen - Living Room',
                      size: 12,
                      weight: FontWeight.w400,
                      color: hexToColor(texts)),
                  TextWidget(
                      text: '8 Unit | 12 Jam',
                      size: 12,
                      weight: FontWeight.w400,
                      color: hexToColor(texts2)),
                ],
              ),
            ],
          ),
          Column(
            children: [
              TextWidget(
                  text: '1000 kw/h',
                  size: 14,
                  weight: FontWeight.w400,
                  color: hexToColor(mains2)),
              Row(
                children: [
                  const Icon(
                    Icons.trending_down_sharp,
                    size: 14,
                    color: Colors.red,
                  ),
                  TextWidget(
                      text: '-11.2%',
                      size: 14,
                      weight: FontWeight.w400,
                      color: Colors.red),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
