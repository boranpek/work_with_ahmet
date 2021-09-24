import 'dart:ui';

import 'package:flutter/material.dart';

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
          SizedBox(
            child: Container(
              color: Color(0xff19223C),
            ),
            height: 44,
          ),
          Container(
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
          ),
          Expanded(
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
          ),
          Container(
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
                            Icon(
                              Icons.add_comment,
                              color: Color(0xff00FFFF),
                            ),
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
                            Icon(
                              Icons.add_comment,
                              color: Color(0xff00FFFF),
                            ),
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
          ),
        ],
      ),
    );
  }
}
