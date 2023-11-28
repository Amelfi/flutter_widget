import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: ListView2Screen(),
      initialRoute: 'home',
      routes:{
        'home'     : (BuildContext context) => const HomeScreen(),
        'listView1': (BuildContext context) => const ListView1Screen(),
        'listView2': (BuildContext context) => const ListView2Screen(),
        'alert'    : (BuildContext context) => const AlertScreen(),
        'card'     : (BuildContext context) => const CardScreen(),
        },
    );
  }
}
