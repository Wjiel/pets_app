import 'package:flutter/material.dart';
import 'package:pets_app/Config/colors.dart';
import 'package:pets_app/start_screen/Pages/OnePage.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          setState(() {
            pageController.nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          });
        },
        elevation: 0,
        highlightElevation: 0,
        backgroundColor: secondColor,
        shape: CircleBorder(),
        child: Text(
          'Дальше',
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 20, top: 40, bottom: 60),
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            OnePage(
              currentPageIndex: 0,
              title: [
                TextSpan(
                  text: 'Узнавай ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'чуть больше о своем питомце',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            OnePage(
              currentPageIndex: 1,
              title: [
                TextSpan(
                  text: 'Получайте ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'советы по уходу, которые ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'подходят ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'именно вашему другу. ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            OnePage(
              currentPageIndex: 2,
              title: [
                TextSpan(
                  text: 'Отслеживайте ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'важные моменты: от питания до прогулок.',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
