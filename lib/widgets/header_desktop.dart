import 'package:flutter/material.dart';
import 'package:soundscapewalks/constants/fontsize.dart';
import 'package:soundscapewalks/widgets/page_language.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  final VoidCallback onLanguageSwitch;

  const HeaderDesktop({super.key, required this.onLanguageSwitch});

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
                  style: const TextStyle(
                      color: CustomColor.whitePrimary,
                      fontSize: standardfontsize),
                )),
          ),
        const Spacer(),
        TextButton(
            onPressed: onLanguageSwitch,
            child: Text(
              PageLanguage.current == Language.english ? 'PL' : 'EN',
              style: const TextStyle(color: CustomColor.whitePrimary,fontSize: standardfontsize),
            ))
      ],
    );
  }
}
