import 'package:first_page/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchWithButton extends StatelessWidget {
  final String description;

  const SwitchWithButton({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          description,
          style: TextStyle(color: BackgroundColor.inputColor.withOpacity(0.6)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 1),
          child: FlutterSwitch(
            height: 29,
            width: 54,
            toggleSize: 21,
            borderRadius: 30.0,
            padding: 4.0,
            toggleColor: BackgroundColor.areaColor,
            inactiveColor: BackgroundColor.buttonColor,
            activeColor: BackgroundColor.buttonColor,
            onToggle: (bool value) {},
            value: true,
          ),
        ),
      ],
    );
  }
}
