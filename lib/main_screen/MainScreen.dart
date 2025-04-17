import 'package:flutter/material.dart';
import 'package:pets_app/Config/colors.dart';
import 'package:pets_app/main_screen/Widgets/MyPetsListView.dart';
import 'package:pets_app/main_screen/Widgets/PlansCard.dart';

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

  final List<String> dataClass = [
    'Все',
    'Коты',
    'Собаки',
    'Шиншиллы',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(toolbarHeight: 0, backgroundColor: primaryColor),
      body: ListView(
        padding: EdgeInsets.only(bottom: 20),
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
                      color: greyColor,
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 30,
                      color: greyColor,
                    ),
                  ],
                )
              ],
            ),
          ),
          MyPetsListView(data: data),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(360),
                      child: Ink(
                        width: 50,
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          color: secondColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.reorder,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(30),
                        child: Ink(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: i != 0 ? Colors.white : primaryColor,
                            border: Border.all(
                              color: primaryColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              dataClass[i],
                              style: TextStyle(
                                color: i == 0 ? Colors.white : primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 30),
          PlansCard(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: Ink(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Не забудьте о встречах!',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.chevron_left)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: Ink(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Приходи к нам',
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.chevron_left)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
