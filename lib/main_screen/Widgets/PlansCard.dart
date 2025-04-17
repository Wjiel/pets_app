import 'package:flutter/material.dart';

import '../../Config/colors.dart';
import 'PlansCardClips.dart';

class PlansCard extends StatelessWidget {
  const PlansCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: PlansCardClips(),
      child: Container(
        padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 40),
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: Column(
          spacing: 10,
          children: [
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Планы',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Добавить +',
                      style: TextStyle(color: greyColor, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 1; i < 33; i++)
                    i != 8
                        ? Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                '$i',
                                style:
                                    TextStyle(color: greyColor, fontSize: 20),
                              ),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(360),
                                child: Ink(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: secondColor),
                                  child: Center(
                                    child: Text(
                                      '$i',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                ],
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(30),
                child: Ink(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: Text(
                          'Запись к ветеренару',
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 20, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Text(
                        '08:00',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(30),
                child: Ink(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: Text(
                          'Прогулка с другими друзьями',
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Text(
                        '09:00',
                        style: TextStyle(
                            color: greyColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Больше >',
                style: TextStyle(color: secondColor, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
