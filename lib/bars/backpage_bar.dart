import 'package:flutter/material.dart';

class BackPageBar extends StatelessWidget {
  const BackPageBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      color: Color(0xff19223C),
      height: 58,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.keyboard_backspace,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
