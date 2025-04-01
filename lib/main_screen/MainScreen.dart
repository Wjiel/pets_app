import 'package:flutter/material.dart';
import 'package:pets_app/Config/colors.dart';

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});
  final List<Map<String, String>> data = [
    {
      "name": 'Огурец',
      "class": 'Кот',
    },
    {
      "name": 'Бублик',
      "class": 'Собака',
    },
    {
      "name": 'Огурец',
      "class": 'Шиншилла',
    },
    {
      "name": 'Огурец',
      "class": 'Кот',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: primaryColor,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 40,
              right: 20,
              left: 20,
            ),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Мои питомцы',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.grey[500],
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 30,
                      color: Colors.grey[500],
                    ),
                  ],
                )
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, -30),
            child: SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < 4; i++)
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
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
          ),
        ],
      ),
    );
  }
}
