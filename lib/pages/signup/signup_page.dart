import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letchat/components/background_image.dart';
import 'package:letchat/components/constant.dart';
import 'package:letchat/widgets/password_input.dart';
import 'package:letchat/widgets/rounded_button.dart';
import 'package:letchat/widgets/text_field_input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(
          image: 'assets/images/background.png',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 3,
                            sigmaY: 3,
                          ),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor:
                                Colors.grey.shade400.withOpacity(0.5),
                            child: Icon(
                              FontAwesomeIcons.user,
                              color: kWhite,
                              size: size.width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: kYellow,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: kWhite,
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          FontAwesomeIcons.camera,
                          color: kBlack,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    TextInputField(
                      icon: FontAwesomeIcons.user,
                      hint: 'First Name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.user,
                      hint: 'Last Name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
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
                    SizedBox(
                      height: 25.0,
                    ),
                    RoundButton(
                      buttonName: 'Register',
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'SignIn');
                          },
                          child: Text(
                            'Login',
                            style: kBodyText.copyWith(
                              color: kYellow,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
