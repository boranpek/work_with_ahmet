import 'package:first_page/constants/color_constants.dart';
import 'package:first_page/constants/router_constants.dart';
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
      onPressed: () {
        Navigator.of(context).pushNamed(RouteConstant.MY_ADDRESS);
      },
      child: Text(
        description,
        style: TextStyle(
            letterSpacing: 0.2,
            color: BackgroundColor.areaColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
