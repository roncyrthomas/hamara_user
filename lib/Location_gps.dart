import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamarauser/Home_page.dart';
import 'package:hamarauser/Location_man.dart';

class LocationGps extends StatelessWidget {
  static const String id = "location_gps";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60.0,
              ),
              Image.asset(
                "images/hamara1.png",
              ),
              Text("And start shopping"),
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Choose your Location",
                style: TextStyle(fontSize: 25.0),
              ),
              Text(
                "and start shopping",
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 60.0,
              ),
              Container(
                width: 330.0,
                height: 60.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Use my current location",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Homepage.id);
                  },
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: 330,
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    child: Text(
                      "Select it Manually",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15.0,
                          color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Locationman.id);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
