import 'package:flutter/material.dart';

import '../../Config/colors.dart';

class MyPetsListView extends StatelessWidget {
  final data;
  MyPetsListView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: Offset(0, -30),
      child: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < data.length; i++)
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 100,
                  child: Column(
                    spacing: 10,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: primaryColor,
                          radius: 45,
                        ),
                      ),
                      Text(
                        data[i]['name']!,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: size.width,
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          data[i]['class']!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
