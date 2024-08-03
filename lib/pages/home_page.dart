import 'package:flutter/material.dart';
import 'package:soundscapewalks/constants/colors.dart';
import 'package:soundscapewalks/constants/nav_items.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            SizedBox(
                height: 500,
                width: double.maxFinite,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        for (int i = 0; i < navTitles.length; i++)
                          TextButton(
                              onPressed: () {}, child: Text(navTitles[i], style: const TextStyle(color: CustomColor.whitePrimary),)),
                        Spacer(),
                        TextButton(onPressed: () {}, child: Text('PL'))
                      ],
                    )
                  ],
                )),
            //
          ],
        ));
  }
}
