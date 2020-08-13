import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamarauser/Home_page.dart';
import 'package:hamarauser/OTP_page.dart';
import 'package:hamarauser/Register_Page.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login_page";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Image.asset(
                  "images/iahavs.png",
                  height: 270.0,
                ),
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 29.0, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 330.0,
                child: TextField(
                  decoration:
                      InputDecoration(labelText: "Email ID or Mobile Number"),
                ),
              ),
              Container(
                width: 330.0,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock), labelText: "Password"),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 330,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 330.0,
                height: 50.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.red,
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Homepage.id);
                  },
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 330.0,
                height: 50.0,
                child: OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Login With OTP",
                    style: TextStyle(color: Colors.blue, fontSize: 15.0),
                  ),
                  borderSide: BorderSide(width: 1, color: Colors.blue),
                  onPressed: () {
                    Navigator.pushNamed(context, OtpPage.id);
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 330,
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    child: Text(
                      "Skip Login",
                      style: TextStyle(
                          decoration: TextDecoration.underline, fontSize: 15.0),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Homepage.id);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Dont have an Account?",
                    style: TextStyle(fontSize: 17),
                  ),
                  InkWell(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.red, fontSize: 17.0),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
