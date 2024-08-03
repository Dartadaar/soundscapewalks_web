import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          backgroundColor: CustomColor.scaffoldBg,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close)),
              ),
              for (int i = 0; i < navTitles.length; i++)
                TextButton(
                    onPressed: () {},
                    child: Text(
                      navTitles[i],
                      style: const TextStyle(color: CustomColor.whitePrimary),
                    )),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(onPressed: () {}, child: Text('PL', style: TextStyle(color: CustomColor.redPrimary),))
                )
            ],
          ),
        );
  }
}