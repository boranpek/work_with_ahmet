import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        color: Color(0xff19223C),
      ),
      height: 44,
    );
  }
}
