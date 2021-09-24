import 'dart:ui';

import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          SizedBox(
            height: 44,
          ),
          Container(
            color: Colors.yellow,
            height: 58,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  IconData(0xe800,
                      fontFamily: _kFontFam, fontPackage: _kFontPkg),
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'My Addresses',
                    style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.add),
                  Text(
                    'Add',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      height: 26,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            height: 622,
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text('ev'),
                        Text('Klee Emily'),
                        Text('aaaaaaaaaaaaa'),
                        Text('aaaaaaaaaaaaaaaaaaaaa'),
                        Text('aaaaaaaaaaaaaaaaaaaaaaaaaaa'),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.add_comment),
                            Text('edit'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('is'),
                        Text('Klee Emily'),
                        Text('aaaaaaaaaaaaa'),
                        Text('aaaaaaaaaaaaaaaaaaaaa'),
                        Text('aaaaaaaaaaaaaaaaaaaaaaaaaaa'),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.add_comment),
                            Text('edit'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
