import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

import '../constants/fontsize.dart';
import '../constants/timeline_pl.dart';

class TimelineMobile extends StatelessWidget {
  const TimelineMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: kTimelinePL.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color:
                          Colors.white,
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black, width: 1.5),
                    ),
                  ),
                  if (index != kTimelinePL.length - 1)
                    Container(
                      width: 1.5,
                      height: 100,
                      color: Colors.black,
                    ),
                ],
              ),
              const SizedBox(width: 20),
              // Content
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        kTimelinePL[index][0],
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        kTimelinePL[index][1],
                        style: TextStyle(
                          fontSize: standardfontsize -
                              2,
                          color: Colors
                              .grey[400],
                        ),
                      ),
                      const SizedBox(height: 10),
                      ExpandText(
                        kTimelinePL[index][2],
                        style: const TextStyle(
                          fontSize: standardfontsize -
                              2,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
