import 'dart:ui';

import 'package:first_page/widgets/address_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final Color panelColor = Color(0xff19223C);
  final Color buttonColor = Color(0xff00FFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: panelColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            buildPanel(),
            buildAdressList(),
          ],
        ),
      ),
    );
  }

  Expanded buildAdressList() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Color(0xff0A1430),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: ListView(
          children: [
            AddressCard(
              title: 'Ev',
              name: 'Klee Emiliy',
              city: 'Cankaya / Ankara',
              district: 'Yukari Ovecler Mahallesi',
              street: 'Turan Gunes Bulvari 1280. Sokak 6/4',
            ),
            AddressCard(
              title: 'Is',
              name: 'Klee Emiliy',
              city: 'Cankaya / Ankara',
              district: 'Yukari Ovecler Mahallesi',
              street: 'Turan Gunes Bulvari 1280. Sokak 6/4',
            ),
          ],
        ),
      ),
    );
  }

  Column buildPanel() {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(24),
          color: panelColor,
          child: Container(child: SvgPicture.asset('asset/icons/Back.svg')),
        ),
        Container(
          height: 100,
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
          color: panelColor,
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
                        style: TextStyle(color: buttonColor),
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
