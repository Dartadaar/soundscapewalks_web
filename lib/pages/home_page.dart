import 'package:flutter/material.dart';
import 'package:soundscapewalks/constants/colors.dart';
import 'package:soundscapewalks/constants/fontsize.dart';
import 'package:soundscapewalks/constants/padding.dart';
import 'package:soundscapewalks/constants/size.dart';
import 'package:soundscapewalks/widgets/bio_desktop.dart';
import 'package:soundscapewalks/widgets/drawer_mobile.dart';
import 'package:soundscapewalks/widgets/header_desktop.dart';
import 'package:soundscapewalks/widgets/header_mobile.dart';
import 'package:soundscapewalks/widgets/video_widget.dart';
import 'package:easy_web_view/easy_web_view.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer:
              constraints.maxWidth > kMinDesktopWidth ? null : DrawerMobile(),
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
                          child: constraints.maxWidth > kMinDesktopWidth
                              ? HeaderDesktop()
                              : HeaderMobile(onMenuTap: () {
                                  scaffoldKey.currentState?.openEndDrawer();
                                })),
                      Center(
                          child: Text('SOUNDSCAPEWALKS',
                              style: TextStyle(
                                  fontSize: 70, fontWeight: FontWeight.w200)))
                    ],
                  )),
              //description
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: Text(
                      '"Soundscapewalks" to utwór stworzony przez Patrycję Kołodziejską, Włodzimierza Żukowskiego oraz Bartosza Gardzińskiego, zakładający współpracę studentów z Wydziału Kompozycji i Teorii Muzyki oraz Wydziału Reżyserii Dźwięku. Głównym założeniem jest głęboka eksploracja dźwiękowej tożsamości Warszawy, zagłębienie się w akustyczny materiał genetyczny miasta, który buduje rzeczywistość wokół mieszkańców poprzez uchwycenie dźwięków tła, pozornie niezauważalnych, a które faktycznie determinują przestrzeń, będącą w ciągłej koegzystencji z dwoma milionami ludzi.',
                      style: TextStyle(fontSize: standardfontsize)),
                ),
              ),
              //timeline
              Divider(
                height: 0,
                thickness: 2,
                color: CustomColor.whitePrimary,
              ),
              Container(
                width: double.maxFinite,
                height: 700,
                color: CustomColor.redPrimary,
              ),
              //MAP
              SizedBox(
                width: double.maxFinite,
                height: constraints.maxHeight - 50,
                child: Stack(children: [
                  EasyWebView(src: 'https://snazzymaps.com/embed/629337'),
                  PointerInterceptor(child: Container())
                ]),
              ),
              //BIO
              BioDesktop(),
              //FOOTER
              Divider(
                height: 0,
                thickness: 2,
                color: CustomColor.whitePrimary,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
                    child: Text(
                      'SOUNDSCAPEWALKS',
                      style: TextStyle(fontWeight: FontWeight.w200, fontSize: 30),
                    ),
                  ))
            ],
          ));
    });
  }
}
