import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/views/common_widget/text_widget.dart';
import 'package:smart_home/views/landing_screen.dart';
import 'package:smart_home/views/splash/boxes.dart';
import 'package:smart_home/views/splash/circles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: hexToColor(mains2),
        body: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 24, top: 57),
                child: TextWidget(
                  text: "smartme",
                  size: 16,
                  weight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 24, top: 67, right: 55),
                child: TextWidget(
                  text: "Welcome Home",
                  size: 28,
                  weight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 24, top: 8, right: 55),
                child: TextWidget(
                  text:
                      "no matter how far you go,home will be your destination to return to. let's make your home comfortable",
                  size: 14,
                  weight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img.png'),
                          fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
          const Positioned(bottom: 100, left: -20, child: Boxes()),
          const Positioned(bottom: 140, left: 100, child: Boxes()),
          Positioned(
              bottom: 130,
              right: 16,
              left: 16,
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LandingScreen()));
                  },
                  child: Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: hexToColor(button),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade800,
                                blurRadius: 3,
                                spreadRadius: 2,
                                offset: const Offset(3, 3))
                          ],
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: "Get Started",
                              size: 16,
                              weight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(
                              Icons.skip_next_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ])))),
          const Positioned(top: -30, right: 100, child: Boxes()),
          const Positioned(top: 110, right: 30, child: Boxes()),
          const Positioned(top: 85, right: 60, child: Boxes()),
          const Positioned(bottom: 15, left: 100, child: Boxes()),
          const Positioned(bottom: -15, left: -40, child: Boxes()),
          Positioned(
              top: 200, left: -40, child: Circles(height: 80, width: 80)),
          Positioned(
              top: 250, right: 100, child: Circles(height: 20, width: 20)),
          Positioned(
              top: 350, right: 50, child: Circles(height: 20, width: 20)),
          Positioned(top: 285, left: 50, child: Circles(height: 20, width: 20)),
          Positioned(
              top: 320, left: 170, child: Circles(height: 20, width: 20)),
          Positioned(
              top: 450, left: 160, child: Circles(height: 20, width: 20)),
        ]));
  }
}
