import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(24),
        color: Color(0xff19223C),
        child: Row(
          children: [
            Text(
              'My Addresses',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Container(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  children: [
                    SvgPicture.asset('asset/icons/add_icon.svg'),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Add',
                      style: TextStyle(color: Color(0xff00FFFF)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
