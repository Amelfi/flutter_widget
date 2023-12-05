import 'package:flutter/material.dart';
import 'package:flutter_widgets/Themes/custom_themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double scale = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
            min: 50,
            value: scale,
            max: 1000,
            activeColor: CustomThemes.primary,
            onChanged: _sliderEnable
                ? (value) {
                    scale = value;

                    setState(() {
                      // print(scale);
                    });
                  }
                : null),

        // Checkbox(value: _sliderEnable , onChanged: (value){
        //   _sliderEnable = value ?? true;
        //   setState(() {

        //   });
        // }),

        // Switch(value: _sliderEnable , onChanged: (value){
        //   _sliderEnable = true;
        //   setState(() {

        //   });
        // }),
        CheckboxListTile.adaptive(
          title: const Text('Habilitar Slider'),
          activeColor: CustomThemes.primary,
          value: _sliderEnable,
          onChanged: (value) {
            _sliderEnable = value ?? true;
            setState(() {});
          }),

        SwitchListTile.adaptive(
          title: const Text('Habilitar Slider'),
          activeColor: CustomThemes.primary,
          value: _sliderEnable,
          onChanged: (value) {
            setState(() {
              _sliderEnable = value;
            });
          }
          //   _sliderEnable = true;
          //   setState(() {

          ),
        const AboutListTile(),

        Expanded(
          child: SingleChildScrollView(
            child: Image(
                image: const NetworkImage(
                    'https://www.pngplay.com/wp-content/uploads/6/Justice-League-Batman-PNG.png'),
                fit: BoxFit.contain,
                width: scale),
          ),
        ),
      ]),
    );
  }
}
