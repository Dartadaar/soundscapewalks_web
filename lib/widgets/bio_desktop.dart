import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/fontsize.dart';

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
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 80.0),
              child: Column(
                children: [
                  Text(
                    'Patrycja Kołodziejska',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: standardfontsize),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, enim a pellentesque interdum, sapien massa aliquet risus, at convallis est est quis sapien. Morbi a ligula bibendum, pretium est tristique, sodales lacus. Praesent lobortis euismod nibh sed faucibus. Maecenas molestie velit vel venenatis volutpat. Etiam laoreet urna et eros tempus auctor. Sed porttitor erat nec sapien pellentesque, nec vehicula mauris luctus. Vestibulum varius justo non tempus tempor. Aliquam quis faucibus dolor. Nullam et convallis odio.',
                    style: TextStyle(fontSize: standardfontsize),
                  )
                ],
              ),
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
                padding: const EdgeInsets.symmetric(
                    vertical: 40.0, horizontal: 80.0),
                child: Column(
                  children: [
                    Text(
                      'Włodzimierz Żukowski',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: standardfontsize),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Composer, improviser, light designer, media artist. Having predominant interest in musical composition he explores akin areas, such as generative visual media art, stage theatre lighting, computer network design and phonology that converge into interrelated and interdisciplinary works. His works were performed by ensembles such as Ensemble MusikFabrik, Neue Vocalsolisten Stuttgart, the UMFC string orchestra, Chopin University Modern Ensemble and installations were present on Warsaw Autumn Festival. He is currently working on "soundscapewalks" with Patrycja Kolodziejska - an audiovisual installation intended as a deep exploration of the sonic identity of Warsaw.',
                      style: TextStyle(fontSize: standardfontsize),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
