import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/frame34.dart';
import 'package:smart_home/views/common_widget/frame38.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';
import 'package:smart_home/views/smart_mode/mode_card.dart';

class SmartModeScreen extends StatefulWidget {
  SmartModeScreen({Key? key}) : super(key: key);

  @override
  State<SmartModeScreen> createState() => _SmartModeScreenState();
}

class _SmartModeScreenState extends State<SmartModeScreen> {
  TextEditingController controller = TextEditingController();

  String dropdownvalue = 'Living Room';

  var items = [
    'Living Room',
    'Dining Room',
    'Smart Mode',
    'Room',
    'Kitchen',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: hexToColor(mains2),
            title: TextWidget(
                text: 'Smart Mode',
                size: 24,
                weight: FontWeight.w600,
                color: Colors.white),
            actions: [
              Container(
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.tune, color: hexToColor(mains2)))),
            ]),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    color: hexToColor(roombg),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              color: hexToColor(mains2),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(35))),
                          child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 15),
                              decoration: BoxDecoration(
                                  color: hexToColor(roombg),
                                  borderRadius: BorderRadius.circular(16)),
                              child: DropdownButton(
                                  value: dropdownvalue,
                                  dropdownColor: hexToColor(roombg),
                                  isExpanded: true,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  underline: const SizedBox(),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: hexToColor(mains2),
                                  ),
                                  iconSize: 30,
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  }))),
                      Container(
                          color: hexToColor(mains2),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: hexToColor(roombg),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(35))),
                              child: Column(children: [
                                const SizedBox(height: 28),
                                Frame34(text1: 'Smart Mode', text2: '10'),
                                Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 18),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return ModeCard(index: index);
                                        })),
                                Frame38(text: 'Add New Smart Mode'),
                              ])))
                    ])))));
  }
}
