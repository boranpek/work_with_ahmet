import 'dart:ui';

import 'package:flutter/material.dart';

import 'bars/backpage_bar.dart';
import 'bars/header_bar.dart';
import 'bars/info_bar.dart';
import 'bars/status_bar.dart';

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
      body: Column(
        children: [
          StatusBar(),
          BackPageBar(),
          HeaderBar(),
          InfoBar(),
        ],
      ),
    );
  }
}
