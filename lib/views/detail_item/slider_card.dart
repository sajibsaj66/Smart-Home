import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

class SliderCard extends StatefulWidget {
  const SliderCard({Key? key}) : super(key: key);

  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  double brightness = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 128,
        child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.white,
                trackShape: const RectangularSliderTrackShape(),
                trackHeight: 2.0,
                thumbColor: hexToColor(button),
                thumbShape:
                    const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                overlayShape:
                    const RoundSliderOverlayShape(overlayRadius: 2.0)),
            child: Slider(
                label: brightness.abs().toString(),
                min: 0.0,
                max: 1.0,
                value: brightness,
                onChanged: (double value) {
                  setState(() {
                    brightness = value;
                  });
                })));
  }
}
