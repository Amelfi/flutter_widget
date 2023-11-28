import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List options = ['Superman', 'Batman', 'Flash', 'Aquaman'];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'List View 1',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.indigoAccent,
          shadowColor: Colors.indigoAccent,
          elevation: 5.0,
        ),
        body: ListView(
          children: [
            ...options
                .map((hero) => ListTile(
                    title: Text(hero),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined)))
                .toList()
          ],
        ));
  }
}
