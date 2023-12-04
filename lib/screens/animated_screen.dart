import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 70;
  double _height = 70;
  Color _color = Colors.indigo;
  BorderRadius _borderRadius = BorderRadius.circular(5);

  void onChangeAnimate() {
    
    // _color = Colors.indigo;
    setState(() {
      _width = Random().nextInt(300).toDouble() + 70;
      _height = Random().nextInt(300).toDouble() + 70;
      _borderRadius = BorderRadius.circular(Random().nextInt(300).toDouble() + 10);
      _color = Color.fromRGBO(
        Random().nextInt(255), 
        Random().nextInt(255), 
        Random().nextInt(255), 
        1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onChangeAnimate();
        },
        child: const Icon(Icons.play_circle_outline),
      ),
    );
  }
}
