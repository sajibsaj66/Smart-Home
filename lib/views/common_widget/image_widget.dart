import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  ImageWidget(
      {Key? key,
      required this.image,
      required this.width,
      required this.height})
      : super(key: key);

  String image;
  double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        margin: const EdgeInsets.only(right: 8),
        child: Image.asset(image, fit: BoxFit.fill));
  }
}
