import 'package:flutter/material.dart';
import 'package:soundscapewalks/widgets/bio_builder.dart';

import '../constants/colors.dart';
import 'hover_image.dart';
import 'page_language.dart';

class BioMobile extends StatelessWidget {
  const BioMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First Bio Section
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 2),
              ),
              margin: EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: HoverImage(
                        imagePath: 'assets/images/Pati3d.png',
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                    SizedBox(height: 20),
                    BioBuilder(
                      name: 'Patrycja Kołodziejska',
                      bio: PageLanguage.text('patrycjaBio'),
                    ),
                  ],
                ),
              ),
            ),
            // Second Bio Section
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: HoverImage(
                        imagePath: 'assets/images/Wlodek3d.png',
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                    SizedBox(height: 20),
                    BioBuilder(
                      name: 'Włodzimierz Żukowski',
                      bio: PageLanguage.text('wlodekBio'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
