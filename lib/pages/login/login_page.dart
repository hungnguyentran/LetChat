import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letchat/components/background_image.dart';
import 'package:letchat/components/constant.dart';
import 'package:letchat/widgets/password_input.dart';
import 'package:letchat/widgets/rounded_button.dart';
import 'package:letchat/widgets/text_field_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(
        image: 'assets/images/background.png',
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Flexible(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 5.0, bottom: 25.0),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Text(
                      'LetChat',
                      style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 60.0),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextInputField(
                  icon: FontAwesomeIcons.envelope,
                  hint: 'Email',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
                PasswordInput(
                  icon: FontAwesomeIcons.lock,
                  hint: 'Password',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.done,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                  child: Text(
                    'Forgot password?',
                    style: kBodyText,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                RoundButton(
                  buttonName: 'Log in',
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'SignUp'),
              child: Container(
                child: Text(
                  'Create New Account?',
                  style: kBodyText,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            )
          ],
        ),
      )
    ]);
  }
}
