import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/see_all.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';
import 'package:smart_home/views/home/frame41.dart';

class SeeAllDetailRoomScreen extends StatelessWidget {
  const SeeAllDetailRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: hexToColor(mains2),
          leadingWidth: 80,
          leading: Container(
              margin: const EdgeInsets.only(left: 18),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(children: [
                    const Icon(Icons.arrow_back_ios, color: Colors.white),
                    TextWidget(
                        text: 'Back',
                        size: 12,
                        weight: FontWeight.w400,
                        color: Colors.white),
                  ]))),
          title: TextWidget(
              text: 'Room',
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
          ],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35))),
        ),
        body: SingleChildScrollView(
            child: Container(
                color: hexToColor(mains2),
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
                              text1: 'Your Rooms', text2: 'icon', text3: '10')),
                      Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                          child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 8,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisExtent: 200,
                                      mainAxisSpacing: 14,
                                      crossAxisSpacing: 16),
                              itemBuilder: (context, index) {
                                return Frame41(
                                    image: 'assets/img_2.png',
                                    text1: '19',
                                    text2: 'Living Room',
                                    text3: '5',
                                    text4: 'devices');
                              })),
                    ])))));
  }
}
