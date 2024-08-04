import 'package:flutter/material.dart';
import 'package:soundscapewalks/constants/fontsize.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < navTitles.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(color: CustomColor.whitePrimary, fontSize: standardfontsize),
                )),
          ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: const Text(
              'PL',
              style: TextStyle(color: CustomColor.redPrimary, fontSize: standardfontsize),
            ))
      ],
    );
  }
}
