import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  final String url;
  final String? title;
  const CustomCardImage({super.key, required this.url, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            fit: BoxFit.cover,
            width: double.infinity,
            height: 230,
            fadeInDuration: const Duration(milliseconds: 300),
            image: NetworkImage(url),
            placeholder: const AssetImage("assets/images/jar-loading.gif"),
          ),
        // image: NetworkImage(url, fit: BoxFit.cover,),
        if( title != null )
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
            child: Text(title!),
          )
        ]
      )
    );
  }
}
