import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letchat/components/background_image.dart';
import 'package:letchat/components/constant.dart';
import 'package:letchat/widgets/rounded_button.dart';
import 'package:letchat/widgets/text_field_input.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Forgot Password',
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Center(
                child: Container(
                  width: size.width * 0.8,
                  child: Text(
                    'Enter your email we will send instruction to reset your password',
                    style: kBodyText,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextInputField(
                icon: FontAwesomeIcons.envelope,
                hint: 'email',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 20.0,
              ),
              RoundButton(
                buttonName: 'Send',
                buttonRoute: 'SignIn',
              )
            ],
          ),
        ),
      ],
    );
  }
}
