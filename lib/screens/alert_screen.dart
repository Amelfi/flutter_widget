import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displyDialog(BuildContext context) {
    showCupertinoDialog(
        
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              
              title: const Text('Mi titulo'),
              // shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.circular(10)),
              // elevation: 5,
              // shadowColor: CustomThemes.primary,
              content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Mi contenido'),
                  SizedBox(height: 10),
                  FlutterLogo(size: 100)
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar'))
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alerta')),
      body: Center(
          child: ElevatedButton(
              onPressed: () => displyDialog(context),
              child: const Text(
                'Mostrar alerta',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
    );
  }
}
