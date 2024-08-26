import 'package:flutter/material.dart';

class PhotoApp extends StatelessWidget {
  const PhotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/background.webp'), fit: BoxFit.cover)),
      );
      },);
  }
}