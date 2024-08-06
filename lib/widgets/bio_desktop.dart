import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/fontsize.dart';
import '../constants/text_en.dart';
import 'hover_image.dart';

class BioDesktop extends StatelessWidget {
  const BioDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 49,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 80.0),
              child: Stack(children: [
                Column(
                  children: [
                    Text(
                      'Patrycja Kołodziejska',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: standardfontsize),
                    ),
                    SizedBox(height: 15),
                    Text(
                      TextEn.patrycjaBio,
                      style: TextStyle(fontSize: standardfontsize),
                    )
                  ],
                ),
                HoverImage(
                  imagePath: 'assets/images/Pati3d.png',
                  height: 500,
                ),
              ]),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox(
              height: 500,
              child: VerticalDivider(
                width: 2,
                thickness: 2,
                indent: 35,
                endIndent: 35,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          Flexible(
            flex: 49,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 80.0),
              child: Stack(children: [
                Column(
                  children: [
                    Text(
                      'Włodzimierz Żukowski',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: standardfontsize),
                    ),
                    SizedBox(height: 15),
                    Text(
                      TextEn.wlodekBio,
                      style: TextStyle(fontSize: standardfontsize),
                    )
                  ],
                ),
                HoverImage(
                  imagePath: 'assets/images/Wlodek3d.png',
                  height: 500,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
