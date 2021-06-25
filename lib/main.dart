import 'package:flutter/material.dart';
import 'package:letchat/pages/signup/signup_page.dart';
import 'pages/forgotpassword/forgot_password_page.dart';
import 'pages/splashscreen/splashscreen_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'letChat',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        'ForgotPassword': (context) => ForgotPasswordPage(),
        'SignUp': (context) => SignUpPage(),
      },
    );
  }
}
