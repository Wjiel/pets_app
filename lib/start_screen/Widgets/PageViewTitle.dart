import 'package:flutter/material.dart';
import 'package:pets_app/start_screen/Widgets/BackgroundClipper.dart';

import '../../Config/colors.dart';
import '../../login_screen/LoginScreen.dart';

class PageViewTitle extends StatelessWidget {
  final int currentPageIndex;
  final List<InlineSpan> title;
  PageViewTitle({
    super.key,
    required this.currentPageIndex,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            color: primaryColor,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 40, bottom: 60),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'Пропустить',
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Image.asset(
                      'assets/images/cat${currentPageIndex}.png',
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: title,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < 3; i++)
                      Container(
                        height: 15,
                        width: 15,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: i != currentPageIndex
                              ? primaryColor
                              : secondColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
