import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

import '../constants/fontsize.dart';
import '../constants/timeline_pl.dart';

class TimelineDesktop extends StatelessWidget {
  const TimelineDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (var i = 0; i < kTimelinePL.length; i++)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          kTimelinePL[i][0],
                          style: const TextStyle(
                              fontSize: 70, fontWeight: FontWeight.w200),
                        ),
                        Text(
                          kTimelinePL[i][1],
                          style: const TextStyle(fontSize: standardfontsize),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 100, 70, 0),
                  child: ExpandText(
                    kTimelinePL[i][2],
                    style: const TextStyle(fontSize: standardfontsize),
                    maxLines: 3,
                  ),
                ))
              ],
            ),
        ],
      ),
    );
  }
}
