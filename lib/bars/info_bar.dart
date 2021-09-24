import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Color(0xff0A1430),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      height: 622,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EV',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Klee Emily',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Cankaya / Ankara',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Yukari Ovecler Mahallesi',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Turan Gunes Bulvari 1280. sokak 6/4',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('asset/icons/edit_icon.svg'),
                      Text(
                        'Edit',
                        style: TextStyle(color: Color(0xff00FFFF)),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'IS',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Klee Emily',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Cankaya / Ankara',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Yukari Ovecler Mahallesi',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Turan Gunes Bulvari 1280. sokak 6/4',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('asset/icons/edit_icon.svg'),
                      Text(
                        'Edit',
                        style: TextStyle(color: Color(0xff00FFFF)),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
