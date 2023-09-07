import 'package:flutter/material.dart';
import 'package:smart_home/views/common_widget/frame37.dart';
import 'package:smart_home/views/detail_room/room_card.dart';

import '../../constants.dart';
import '../../model/barchart_model.dart';
import '../common_widget/see_all.dart';
import '../common_widget/text_widget.dart';
import '../home/frame32.dart';
import 'bar_chart.dart';

class DetailRoomScreen extends StatelessWidget {
  const DetailRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: hexToColor(mains2),
            leadingWidth: 80,
            leading: Row(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
              TextWidget(
                  text: 'Back',
                  size: 12,
                  weight: FontWeight.w400,
                  color: Colors.white),
            ]),
            title: TextWidget(
                text: 'Living Room',
                size: 24,
                weight: FontWeight.w600,
                color: Colors.white),
            centerTitle: true,
            actions: [
              Container(
                  margin: const EdgeInsets.only(right: 16),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.search, color: hexToColor(mains2)))),
            ]),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: BoxDecoration(
                  color: hexToColor(mains2),
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(35))),
              child: Column(children: [
                Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 10),
                    decoration: BoxDecoration(
                        color: hexToColor(roombg),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RoomCard(
                              icon: Icons.vpn_key_outlined,
                              text1: '19°',
                              text2: 'c',
                              text3: 'AC'),
                          Container(
                              width: 1, height: 50, color: hexToColor(mains2)),
                          RoomCard(
                              icon: Icons.light,
                              text1: '18',
                              text2: '%',
                              text3: 'Light Lamp'),
                          Container(
                              width: 1, height: 50, color: hexToColor(mains2)),
                          RoomCard(
                              icon: Icons.wifi,
                              text1: '10',
                              text2: 'Kb/s',
                              text3: 'WIFI'),
                        ])),
                const SizedBox(height: 16),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                          text: 'Usage Today',
                          size: 16,
                          weight: FontWeight.w600,
                          color: hexToColor(roombg)),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextWidget(
                                text: '25',
                                size: 20,
                                weight: FontWeight.w600,
                                color: hexToColor(roombg)),
                            TextWidget(
                                text: 'watt',
                                size: 20,
                                weight: FontWeight.w600,
                                color: hexToColor(roombg)),
                          ]),
                    ]),
                BarChart(points: barchartPoints),
              ])),
          Container(
              decoration: BoxDecoration(color: hexToColor(mains2)),
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(35))),
                  child: Column(children: [
                    Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: SeeAll(
                            text1: 'Device',
                            text2: 'icon',
                            text3: '4',
                            color: hexToColor(button))),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 14),
                        child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 6,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: 200,
                                    mainAxisSpacing: 14,
                                    crossAxisSpacing: 16),
                            itemBuilder: (BuildContext context, int index) {
                              return Frame32(
                                  image: 'assets/img_4.png',
                                  text1: 'Temperature',
                                  text2: '19°C',
                                  text3: 'AC',
                                  text4: 'Living room',
                                  text5: 'ON');
                            })),
                    Frame37(text: 'Turn Off All Devices'),
                  ]))),
        ])));
  }
}
