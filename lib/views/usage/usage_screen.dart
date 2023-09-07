import 'package:flutter/material.dart';
import 'package:smart_home/views/usage/usage_card.dart';
import 'package:smart_home/views/usage/usage_chart.dart';

import '../../constants.dart';
import '../../model/barchart_model.dart';
import '../common_widget/see_all.dart';
import '../common_widget/text_widget.dart';

class UsageScreen extends StatelessWidget {
  const UsageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hexToColor(mains2),
        title: TextWidget(
            text: 'Power Usage',
            size: 24,
            weight: FontWeight.w600,
            color: Colors.white),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.tune,
                  color: hexToColor(mains2),
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: hexToColor(mains2),
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                          text: 'Usage this Week',
                          size: 14,
                          weight: FontWeight.w600,
                          color: hexToColor(roombg)),
                      TextWidget(
                          text: '2500 watt',
                          size: 16,
                          weight: FontWeight.w600,
                          color: hexToColor(roombg)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  UsageChart(points: usagechartPoints),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: hexToColor(mains2),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(35)),
                ),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: SeeAll(
                          text1: 'Total Today',
                          text2: 'See All',
                          text3: '4',
                          color: hexToColor(mains2),
                        )),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const UsageCard();
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
