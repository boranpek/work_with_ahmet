import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackPageBar extends StatelessWidget {
  const BackPageBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      color: Color(0xff19223C),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 10),
              child: SvgPicture.asset('asset/icons/Back.svg')),
        ],
      ),
    );
  }
}
