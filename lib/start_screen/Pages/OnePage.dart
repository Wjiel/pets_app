import 'package:flutter/material.dart';

import '../../Config/colors.dart';

class OnePage extends StatelessWidget {
  int currentPageIndex;
  List<InlineSpan> title;
  OnePage({
    super.key,
    required this.currentPageIndex,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'Пропустить',
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 20,
            children: [
              Image.asset(
                'assets/images/cat${currentPageIndex}.png',
              ),
              RichText(
                text: TextSpan(
                  children: title,
                ),
              ),
            ],
          ),
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
                    color: i != currentPageIndex ? primaryColor : secondColor,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
