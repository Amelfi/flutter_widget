import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (_, __) => ListTile(
                title: const Text('Hello World'),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //   builder: (context) => const ListView1Screen(),);
                  //   Navigator.push(context, route);
                  Navigator.pushNamed(context, 'listView1', 
                  // arguments:<String, dynamic>{'data': 1}
                  );
                },
              )),
    );
  }
}
