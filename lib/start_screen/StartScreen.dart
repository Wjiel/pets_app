import 'package:flutter/material.dart';
import 'package:pets_app/Config/colors.dart';
import 'package:pets_app/login_screen/LoginScreen.dart';
import 'package:pets_app/start_screen/Widgets/PageViewTitle.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          if (pageController.page != 2) {
            pageController.nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          } else {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const LoginScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(0.0, 1.0);
                  const end = Offset.zero;
                  const curve = Curves.ease;

                  final tween = Tween(begin: begin, end: end);
                  final curvedAnimation =
                      CurvedAnimation(parent: animation, curve: curve);

                  return SlideTransition(
                    position: tween.animate(curvedAnimation),
                    child: child,
                  );
                },
              ),
            );
          }
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
            PageViewTitle(
              currentPageIndex: 0,
              title: [
                TextSpan(
                  text: 'Узнавай ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: 'чуть больше о своем питомце',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            PageViewTitle(
              currentPageIndex: 1,
              title: [
                TextSpan(
                  text: 'Получайте ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: 'советы по уходу, которые ',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                TextSpan(
                  text: 'подходят ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: 'именно вашему другу. ',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            PageViewTitle(
              currentPageIndex: 2,
              title: [
                TextSpan(
                  text: 'Отслеживайте ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: 'важные моменты: от питания до прогулок.',
                  style: TextStyle(
                    fontSize: 25,
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
