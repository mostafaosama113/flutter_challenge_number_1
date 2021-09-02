import 'package:flutter/material.dart';
import 'package:flutter_challenge_number_1/layouts/register_screen/register_screen.dart';
import 'package:flutter_challenge_number_1/shaard/components/bottom.dart';
import 'package:flutter_challenge_number_1/shaard/components/input_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity),
            Image.network(
              'https://image.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg',
              width: 250,
              height: 150,
              fit: BoxFit.cover,
            ),
            Text(
              'Welcome back!',
              style: TextStyle(
                  color: Color(0xFF323232),
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            ),
            SizedBox(height: 10),
            Text(
              'Log in to your existant account of Q Allure',
              style: TextStyle(
                  color: Color(0xFFAFAFAF),
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 25),
            Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFFCFCFC),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    children: [
                      InputField('Username', Icons.person_outline),
                      SizedBox(height: 25),
                      InputField(
                        'Password',
                        Icons.lock_open,
                        isPass: true,
                      ),
                      Align(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        alignment: AlignmentDirectional.centerEnd,
                      ),
                    ],
                  ),
                )),
            ButtomStyleOne(text: 'Log in'),
            SizedBox(height: 40),
            Text(
              'Or connect using',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtomStyleTwo(
                  bgColor: Color(0xFF385C8E),
                  text: 'Facebook',
                  icon: FontAwesomeIcons.facebookF,
                ),
                ButtomStyleTwo(
                  bgColor: Color(0xFFF14336),
                  text: 'Google',
                  icon: FontAwesomeIcons.google,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterSCreen();
                    }));
                  },
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF549EFF),
                      fontWeight: FontWeight.bold,
                    ),
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
