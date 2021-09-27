import 'package:first_page/add_address_page.dart';
import 'package:first_page/constants/color_constants.dart';
import 'package:first_page/router/materialAutoRouter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MaterialAppRouter _appRouter = MaterialAppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      onGenerateRoute: _appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Second Task',
      theme: ThemeData(
        backgroundColor: BackgroundColor.panelColor,
        fontFamily: 'Poppins',
      ),
      home: AddAddressPage(),
    );
  }
}
