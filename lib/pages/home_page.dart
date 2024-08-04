import 'package:flutter/material.dart';
import 'package:soundscapewalks/constants/colors.dart';
import 'package:soundscapewalks/constants/padding.dart';
import 'package:soundscapewalks/constants/size.dart';
import 'package:soundscapewalks/widgets/drawer_mobile.dart';
import 'package:soundscapewalks/widgets/header_desktop.dart';
import 'package:soundscapewalks/widgets/header_mobile.dart';
import 'package:soundscapewalks/widgets/video_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
            key: scaffoldKey,
            endDrawer: constraints.maxWidth > kMinDesktopWidth?null: DrawerMobile(),
            backgroundColor: CustomColor.scaffoldBg,
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                //MAIN
                SizedBox(
                    height: constraints.maxHeight,
                    width: double.maxFinite,
                    child: Stack(
                      children: [
                        VideoApp(),
                        Padding(
                          padding: EdgeInsets.all(standardPadding),
                          child: constraints.maxWidth > kMinDesktopWidth ? HeaderDesktop() : HeaderMobile(onMenuTap: (){ scaffoldKey.currentState?.openEndDrawer();})
                        )
                      ],
                    )),
                //
              ],
            ));
      }
    );
  }
}
