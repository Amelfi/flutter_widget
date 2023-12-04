import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
  
  const CircleAvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('Avatars'),
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child:  Text('SL', style: TextStyle(color: Colors.indigo[100])),
              
            ),
          )
        ]),

      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1018943227791982592/URnaMrya_400x400.jpg'),
        ),
      ),
    );
  }
}