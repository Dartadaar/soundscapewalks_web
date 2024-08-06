import 'package:flutter/material.dart';

import '../constants/fontsize.dart';

class BioBuilder extends StatelessWidget {
  final String name;
  final String bio;
  const BioBuilder({super.key, required this.name, required this.bio});

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: standardfontsize),
                    ),
                    SizedBox(height: 15),
                    Text(
                      bio,
                      style: TextStyle(fontSize: standardfontsize),
                    )
                  ],
                );
  }
}