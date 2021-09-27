import 'package:flutter/material.dart';

import 'pages/adresses_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primaryColor: Color(0xff010A24),
      ),
      home: AdressesPage(),
    );
  }
}