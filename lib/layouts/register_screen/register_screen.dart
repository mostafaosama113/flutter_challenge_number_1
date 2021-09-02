import 'package:flutter/material.dart';
import 'package:flutter_challenge_number_1/shaard/components/bottom.dart';
import 'package:flutter_challenge_number_1/shaard/components/input_field.dart';

class RegisterSCreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 12,
            ),
            Text(
              'Let\'s Get Started',
              style: TextStyle(
                  color: Color(0xFF323232),
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            ),
            SizedBox(height: 10),
            Text(
              'Create an account to Q Allure to get all features',
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
                      InputField('Email', Icons.email_outlined),
                      SizedBox(height: 25),
                      InputField('Phone', Icons.phone_android),
                      SizedBox(height: 25),
                      InputField(
                        'Password',
                        Icons.lock_open,
                        isPass: true,
                      ),
                      SizedBox(height: 25),
                      InputField(
                        'Confirm password',
                        Icons.lock_open,
                        isPass: true,
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 25),
            ButtomStyleOne(text: 'CREATE', color: Color(0xFF0051CE)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text(
                    'Login here',
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
