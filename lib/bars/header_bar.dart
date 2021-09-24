import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'My Addresses',
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
            Spacer(),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Color(0xff00FFFF),
                  ),
                  Text(
                    'Add',
                    style: TextStyle(color: Color(0xff00FFFF)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
