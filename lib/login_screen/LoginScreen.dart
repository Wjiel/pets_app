import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pets_app/main_screen/MainScreen.dart';

import '../Config/colors.dart';
import 'Widgets/BackgroundClipper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: 20, vertical: size.height * 0.2),
            children: [
              Text(
                'И снова привет!',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: primaryColor,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Мы счастливы увидеть вас снова. \nВведите ваш email и пароль',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Пароль',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: size.width,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Забыли пароль? ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Нажмите сюда',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Mainscreen(),
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
                },
                borderRadius: BorderRadius.circular(20),
                child: Ink(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(
                      'Войти',
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: size.width,
                child: Text(
                  'или',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20),
                child: Ink(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(
                      'Создать аккаунт',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20),
                child: Ink(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: primaryColor,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(
                      'Продолжить как гость',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ClipPath(
            clipper: BackgroundClipper(),
            child: Container(
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
