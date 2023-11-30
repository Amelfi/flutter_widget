import 'package:flutter/material.dart';

import 'package:flutter_widgets/models/models.dart';
import '../screens/screens.dart';

class AppRouter {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //Todo: Erase Home

    MenuOption(
        name: 'HomePage',
        route: 'home',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        name: 'Lista 1',
        route: 'listView1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        name: 'Lista 2',
        route: 'listView2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        name: 'Alertas',
        route: 'alert',
        screen: const AlertScreen(),
        icon: Icons.campaign),
    MenuOption(
        name: 'Tarjetas',
        route: 'card',
        screen: const CardScreen(),
        icon: Icons.card_membership_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (final option in menuOptions) {
      routes.addAll({option.route: (BuildContext context) => option.screen});
    }
    // print(routes);
    return routes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const ListView1Screen(),
  //   'listView2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> generateDynamic(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}