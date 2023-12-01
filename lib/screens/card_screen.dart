import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tarjeta',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            children: const [
              CustomCard(
              name: 'Primera Tarjeta',
              subTitle: 'Lorem ipsum dolor sit amet, consectetur adip elit. Sed vitae mauris nec nisi ultricies eleifend.',
              icon: Icons.car_crash_outlined),
          
              SizedBox(height: 10),
          
              CustomCard(
                name: 'Segunda Tarjeta', 
                subTitle: 'Fusce efficitur, tortor id maximus lobortis, urna nisl condimentum neque, at volutpat lorem ipsum sed ipsum.',
                icon: Icons.card_membership_sharp),

              SizedBox(height: 10),

              CustomCardImage(title: 'Hermoso lago', url: "https://i.pinimg.com/originals/86/30/5a/86305a1e2160954da9b6614b89774216.jpg"),

              SizedBox(height: 10),

              CustomCardImage(title: 'Hermoso paisaje', url: "https://images.wallpaperscraft.com/image/single/landscape_art_moon_127187_2048x1152.jpg"),
              SizedBox(height: 10),

              CustomCardImage(url: "https://wallpapersmug.com/download/2048x1152/f80e73/minimal-landscape-sunset-4k.jpg"),
              SizedBox(height: 20),
            ],
          ),
      );
  }
}
