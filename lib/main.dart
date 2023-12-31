import 'package:flutter/material.dart';
import 'package:flutter_widgets/Themes/custom_themes.dart';
import 'package:flutter_widgets/router/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: ListView2Screen(),
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getRoutes(),
      onGenerateRoute: AppRouter.generateDynamic,
      theme: CustomThemes.lightTheme
    );
  }
}
