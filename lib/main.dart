import 'package:flutter/material.dart';
import 'package:hamarauser/Home_page.dart';
import 'package:hamarauser/Location_gps.dart';
import 'package:hamarauser/Location_man.dart';
import 'package:hamarauser/Login_Page.dart';
import 'package:hamarauser/OTP_page.dart';
import 'package:hamarauser/Register_Page.dart';

void main() {
  runApp(HamaraApp());
}

// ignore: camel_case_types
class HamaraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        OtpPage.id: (context) => OtpPage(),
        LocationGps.id: (context) => LocationGps(),
        Locationman.id: (context) => Locationman(),
        Homepage.id: (context) => Homepage(),
      },
    );
  }
}
