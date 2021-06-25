import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:letchat/pages/login/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 5.0, bottom: 25.0),
            child: Image.asset('assets/images/logo.png'),
          ),
          Text(
            'LetChat',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0),
          ),
        ],
      ),
      nextScreen: LoginPage(),
      splashTransition: SplashTransition.slideTransition,
      backgroundColor: Colors.black,
      duration: 2000,
    );
  }
}
