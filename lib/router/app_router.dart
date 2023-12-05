import 'package:flutter/material.dart';

import 'package:flutter_widgets/models/models.dart';
import 'package:flutter_widgets/screens/slider_screen.dart';
import '../screens/screens.dart';

class AppRouter {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //Todo: Erase Home

    MenuOption(
        name: 'List 1',
        route: 'listView1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        name: 'List 2',
        route: 'listView2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        name: 'Alerts',
        route: 'alert',
        screen: const AlertScreen(),
        icon: Icons.campaign),
    MenuOption(
        name: 'Cards',
        route: 'card',
        screen: const CardScreen(),
        icon: Icons.card_membership_rounded),
    MenuOption(
        name: 'Avatar',
        route: 'avatar',
        screen: const CircleAvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),

    MenuOption(
        name: 'Animated Screen',
        route: 'animated',
        screen: const AnimatedScreen(),
        icon: Icons.animation_rounded),
    MenuOption(
        name: 'Form Screen',
        route: 'form',
        screen: const FormScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        name: 'Slider and Checks',
        route: 'slider',
        screen: const SliderScreen(),
        icon: Icons.check_circle_outline),
    MenuOption(
        name: 'Infinite Scroll',
        route: 'infinite',
        screen: const InfiniteScrollScreen(),
        icon: Icons.screenshot)
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    routes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
