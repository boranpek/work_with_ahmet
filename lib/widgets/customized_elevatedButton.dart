import 'package:first_page/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CustomizedElevatedButton extends StatelessWidget {
  final String description;

  const CustomizedElevatedButton({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size.fromHeight(52)),
        backgroundColor: MaterialStateProperty.all(BackgroundColor.buttonColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        description,
        style: TextStyle(
            color: BackgroundColor.areaColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
