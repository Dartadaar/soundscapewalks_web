import 'package:flutter/material.dart';

import 'constants/colors.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Titillium',
        primaryColor: CustomColor.whitePrimary
      ),
      title: 'soundscapewalks',
      home: const Homepage(),
    );
  }
}