import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/image_widget.dart';
import 'package:smart_home/views/common_widget/see_all.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';
import 'package:smart_home/views/device_active/device_active_screen.dart';
import 'package:smart_home/views/home/frame11.dart';
import 'package:smart_home/views/home/frame32.dart';
import 'package:smart_home/views/see_all_detail_room/see_all_detail_room_screen.dart';

import 'frame41.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: hexToColor(mains2),
            elevation: 0,
            shadowColor: Colors.transparent,
            flexibleSpace: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 90,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/cloud.png'),
                              fit: BoxFit.fill))),
                  Container(
                      width: 90,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/cloud2.png'),
                              fit: BoxFit.fill))),
                ]),
            title:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextWidget(
                  text: 'Good Morning,',
                  size: 24,
                  weight: FontWeight.w600,
                  color: Colors.white),
              TextWidget(
                  text: 'Kimberly Mastrangelo',
                  size: 14,
                  weight: FontWeight.w400,
                  color: Colors.black),
            ]),
            actions: [
              Container(
                  margin: const EdgeInsets.only(right: 24),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(Icons.notifications)),
            ]),
        body: SingleChildScrollView(
            child: Stack(children: [
          Column(children: [
            Container(
                decoration: BoxDecoration(
                    color: hexToColor(mains2),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(35))),
                child: Stack(children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16.5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 12),
                      decoration: BoxDecoration(
                          color: hexToColor(roombg),
                          borderRadius: BorderRadius.circular(28)),
                      child: Column(children: [
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            width: 60,
                                            height: 60,
                                            child: Image.asset(
                                                "assets/img_1.png",
                                                fit: BoxFit.fill)),
                                        const SizedBox(width: 12),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextWidget(
                                                  text: "May 16, 2023 10:05 am",
                                                  size: 12,
                                                  weight: FontWeight.w400,
                                                  color: Colors.black),
                                              TextWidget(
                                                  text: "Cloudy",
                                                  size: 18,
                                                  weight: FontWeight.w600,
                                                  color: Colors.black),
                                              TextWidget(
                                                  text: "Jakarta, Indonesia",
                                                  size: 12,
                                                  weight: FontWeight.w400,
                                                  color: Colors.black),
                                            ]),
                                      ]),
                                  Container(
                                      width: 60,
                                      height: 45,
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Positioned(
                                                right: 15,
                                                child: TextWidget(
                                                    text: "19",
                                                    size: 40,
                                                    weight: FontWeight.w600,
                                                    color: Colors.black)),
                                            Positioned(
                                                top: 5,
                                                right: 10,
                                                child: Container(
                                                    height: 12,
                                                    width: 12,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black,
                                                            width: 3),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    50)))),
                                            Positioned(
                                                right: 0,
                                                top: 8,
                                                child: TextWidget(
                                                    text: 'c',
                                                    size: 30,
                                                    weight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ])),
                                ])),
                        Divider(thickness: 2, color: hexToColor(mains2)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Frame11(
                                  iconData: Icons.hub,
                                  text1: "Humadity",
                                  text2: "97",
                                  text3: "%"),
                              Frame11(
                                  iconData: Icons.remove_red_eye_sharp,
                                  text1: "Visibility",
                                  text2: "7",
                                  text3: "km"),
                              Frame11(
                                  iconData: Icons.wind_power,
                                  text1: "NE wind",
                                  text2: "3",
                                  text3: "km/h"),
                            ]),
                      ])),
                  Positioned(
                      right: 2,
                      bottom: 5,
                      child: ImageWidget(
                          image: 'assets/sun.png', width: 45, height: 45)),
                ])),
            Container(
                color: hexToColor(mains2),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(35))),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16.5),
                        child: Column(children: [
                          SeeAll(
                              text1: 'Rooms',
                              text2: 'See All',
                              text3: '',
                              widget: const SeeAllDetailRoomScreen()),
                          const SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Frame41(
                                    image: 'assets/img_2.png',
                                    text1: '19',
                                    text2: 'Living Room',
                                    text3: '5',
                                    text4: 'devices'),
                                Frame41(
                                    image: 'assets/img_3.png',
                                    text1: '12',
                                    text2: 'Bedroom',
                                    text3: '8',
                                    text4: 'devices'),
                              ]),
                        ])))),
            Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
                child: Column(children: [
                  SeeAll(
                      text1: 'Active',
                      text2: 'See All',
                      text3: '10',
                      widget: const DeviceActiveScreen()),
                  const SizedBox(height: 8),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Frame32(
                            image: 'assets/img_4.png',
                            text1: 'Temperature',
                            text2: '19°C',
                            text3: 'AC',
                            text4: 'Living room',
                            text5: 'ON'),
                        Frame32(
                            image: 'assets/img_5.png',
                            text1: 'Color',
                            text2: 'White',
                            text3: 'Lamp',
                            text4: 'Dining room',
                            text5: 'ON'),
                      ]),
                ])),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 18),
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: hexToColor(button)),
                alignment: Alignment.center,
                child: TextWidget(
                    text: 'Turn Off All Devices',
                    size: 16,
                    weight: FontWeight.w600,
                    color: Colors.white)),
          ]),
        ])));
  }
}
