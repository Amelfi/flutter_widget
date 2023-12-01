import 'package:flutter/material.dart';
import 'package:flutter_widgets/router/app_router.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRouter.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
          itemCount: menuOption.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, i) => ListTile(
                leading: Icon(menuOption[i].icon),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: Text(menuOption[i].name),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //   builder: (context) => const ListView1Screen(),);
                  //   Navigator.push(context, route);
                  Navigator.pushNamed(
                    context, menuOption[i].route,
                    // arguments:<String, dynamic>{'data': 1}
                  );
                },
              )),
    );
  }
}
