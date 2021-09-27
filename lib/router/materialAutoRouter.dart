import 'package:first_page/add_address_page.dart';
import 'package:first_page/constants/router_constants.dart';
import 'package:first_page/task_page_screen.dart';
import 'package:flutter/material.dart';

class MaterialAppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstant.ADD_ADDRESS:
        return MaterialPageRoute(builder: (_) => AddAddressPage());
      case RouteConstant.MY_ADDRESS:
        return MaterialPageRoute(builder: (_) => TaskPage());
      default:
        return null;
    }
  }
}
