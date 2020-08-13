import 'package:flutter/material.dart';
import 'package:hamarauser/Location_gps.dart';

class RegisterPage extends StatefulWidget {
  static const String id = "register_page";
  @override
  _RegisterPAgeState createState() => _RegisterPAgeState();
}

class _RegisterPAgeState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Sign Up"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      "images/iahavs.png",
                      height: 270.0,
                    ),
                  ),
                  Container(
                    width: 330.0,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person), labelText: "Name"),
                    ),
                  ),
                  Container(
                    width: 330.0,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email), labelText: "Email"),
                    ),
                  ),
                  Container(
                    width: 330.0,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone), labelText: "Phone"),
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
                    width: 330.0,
                    height: 50.0,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.red,
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, LocationGps.id);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already have an Account?",
                        style: TextStyle(fontSize: 17),
                      ),
                      InkWell(
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.red, fontSize: 17.0),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
