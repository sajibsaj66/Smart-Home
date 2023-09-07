import 'dart:ui';

import 'package:flutter/material.dart';

String surface = '#EAF0FA';
String surface2 = '#234F9D';
String surface3 = '#E0EBE2';
String mains = '#5887DA';
String mains2 = '#4C7380';
String mains3 = '#659A6E';
String backgroundCard = '#F7F7F7';
String backgroundApplication = '#EDEDED';
String buttonDisable = '#CDCDCD';
String textDisable = '#999999';
String texts = '#404040';
String button = '#9A7265';
String roombg = '#D8E4E8';
String surface4 = '#FFE266';
String texts2 = '#878787';
String iconColor = '#6CABCE';

Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
  return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
}

List<IconData> listOfIcons = [
  Icons.home_outlined,
  Icons.webhook,
  Icons.pie_chart,
  Icons.person_outline,
];

List<String> listOfStrings = [
  'Home',
  'Smart',
  'Usage',
  'Profile',
];
