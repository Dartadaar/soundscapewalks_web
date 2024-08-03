import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < navTitles.length; i++)
          TextButton(
              onPressed: () {},
              child: Text(
                navTitles[i],
                style: const TextStyle(color: CustomColor.whitePrimary),
              )),
        Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              'PL',
              style: TextStyle(color: CustomColor.redPrimary),
            ))
      ],
    );
  }
}
