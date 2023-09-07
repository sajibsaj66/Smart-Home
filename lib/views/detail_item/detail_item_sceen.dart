import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/image_widget.dart';
import 'package:smart_home/views/detail_item/slider_card.dart';
import 'package:smart_home/views/detail_item/usages.dart';

import '../../constants.dart';
import '../common_widget/see_all.dart';
import '../common_widget/text_widget.dart';
import '../smart_mode/mode_card.dart';

class DetailItemScreen extends StatelessWidget {
  const DetailItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
          width: MediaQuery.of(context).size.width,
          color: hexToColor(roombg),
          child: Container(
              decoration: BoxDecoration(
                  color: hexToColor(mains2),
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(35))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SafeArea(
                                child: Row(children: [
                              Row(children: [
                                Container(
                                    margin: const EdgeInsets.only(left: 18),
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Icon(Icons.arrow_back_ios,
                                            color: Colors.white))),
                                TextWidget(
                                    text: 'Back',
                                    size: 12,
                                    weight: FontWeight.w400,
                                    color: Colors.white)
                              ]),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width - 150,
                                  alignment: Alignment.center,
                                  child: TextWidget(
                                      text: 'Lamp',
                                      size: 24,
                                      weight: FontWeight.w600,
                                      color: Colors.white)),
                            ])),
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 17, top: 10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextWidget(
                                                text: 'Dining Room',
                                                size: 14,
                                                weight: FontWeight.w400,
                                                color: Colors.white),
                                            const SizedBox(height: 12),
                                            Container(
                                                height: 24,
                                                child: Image.asset(
                                                    'assets/icon_off.png',
                                                    fit: BoxFit.fill)),
                                          ]),
                                      const SizedBox(height: 26),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  TextWidget(
                                                      text: '80',
                                                      size: 50,
                                                      weight: FontWeight.w600,
                                                      color: Colors.white),
                                                  TextWidget(
                                                      text: '%',
                                                      size: 24,
                                                      weight: FontWeight.w600,
                                                      color: Colors.white),
                                                ]),
                                            TextWidget(
                                                text: 'Brightness',
                                                size: 16,
                                                weight: FontWeight.w400,
                                                color: Colors.white),
                                          ]),
                                    ])),
                          ]),
                      Positioned(
                          right: 95,
                          top: 100,
                          child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.orange.withOpacity(0.6),
                                    spreadRadius: 30,
                                    blurRadius: 60,
                                    offset: const Offset(25, 60)),
                              ], borderRadius: BorderRadius.circular(90)))),
                      Positioned(
                          right: 40,
                          child: Container(
                              height: 197,
                              child: Image.asset('assets/img_6.png',
                                  fit: BoxFit.fill))),
                    ]),
                    Container(
                        margin: const EdgeInsets.only(
                            left: 18, right: 18, bottom: 18, top: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                  text: 'Insensity',
                                  size: 14,
                                  weight: FontWeight.w600,
                                  color: Colors.white),
                              const SizedBox(height: 12),
                              Row(children: [
                                ImageWidget(
                                    image: 'assets/light_off.png',
                                    width: 34,
                                    height: 34),
                                const SliderCard(),
                                ImageWidget(
                                    image: 'assets/light_on.png',
                                    width: 42,
                                    height: 42),
                              ]),
                              const SizedBox(height: 20),
                              Divider(thickness: 2, color: hexToColor(roombg)),
                              const SizedBox(height: 20),
                              TextWidget(
                                  text: 'Usages',
                                  size: 14,
                                  weight: FontWeight.w600,
                                  color: Colors.white),
                              Usages(title: 'Use Today', unit: '50 watt'),
                              Usages(title: 'Use Week', unit: '500 kwh'),
                              Usages(title: 'Use Month', unit: '5000 kwh'),
                            ])),
                  ]))),
      Container(
          decoration: BoxDecoration(color: hexToColor(mains2)),
          child: Container(
              decoration: BoxDecoration(
                  color: hexToColor(roombg),
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(35))),
              child: Column(children: [
                Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child:
                        SeeAll(text1: 'Schedule', text2: 'icon', text3: '4')),
                Container(
                    margin:
                        const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return ModeCard(index: index);
                        })),
              ]))),
    ])));
  }
}
