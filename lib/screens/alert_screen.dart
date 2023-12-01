import 'package:flutter/material.dart';
import 'package:flutter_widgets/Themes/custom_themes.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Alerta')),
      body: const Center(
        child: Text('AlertScreen'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: CustomThemes.primary,
        child: const Icon(Icons.add),

      ),
    );
  }
}
