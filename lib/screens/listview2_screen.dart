import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List options = ['Superman', 'Batman', 'Flash', 'Aquaman'];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'List View 2',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.indigoAccent,
          shadowColor: Colors.indigoAccent,
          elevation: 5.0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigoAccent,),
                  onTap: () {
                    final heroes = options[index];
                    print(heroes);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
