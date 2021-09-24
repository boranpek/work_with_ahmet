import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff19223C),
      body: SafeArea(
        child: Column(
          children: [
            buildPanel(),
            buildAdressList(),
          ],
        ),
      ),
    );
  }

  Container buildAdressList() {
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

  Column buildPanel() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(24),
          color: Color(0xff19223C),
          child: Row(
            children: [
              Container(child: SvgPicture.asset('asset/icons/Back.svg')),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
          color: Color(0xff19223C),
          child: Row(
            children: [
              Text(
                'My Addresses',
                style: TextStyle(
                    fontSize: 24,
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
      ],
    );
  }
}
