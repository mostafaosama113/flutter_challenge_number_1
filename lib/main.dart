import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge_number_1/layouts/login_screen/loginScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backwardsCompatibility:
              false, // لازم اقفلها عشان اقدر اعدل حاجات معينه في systemOverlayStyle
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white, //بغير لون الشرط الي فوق بتاع الاستاتس
            statusBarIconBrightness:
                Brightness.dark, // بغير لون الايكونات الي في الاستاتس للاسود
          ),
          color: Colors.white),
    ),
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}
