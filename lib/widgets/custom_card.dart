import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final String subTitle;
  const CustomCard({super.key, required this.name, required this.icon, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              icon,
            ),
            title: Text(name),
            subtitle: Text(subTitle),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                TextButton(
                  onPressed: () {} , 
                  child: const Text('Cancel')
                ),
                TextButton(
                  onPressed: () {} , 
                  child: const Text('Ok')
                )
              ],
            ),
            )
            
        ],
      ),
    );
  }
}
