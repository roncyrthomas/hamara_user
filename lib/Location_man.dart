import 'package:flutter/material.dart';
import 'package:hamarauser/Home_page.dart';

class Locationman extends StatefulWidget {
  static const String id = "location_man";

  @override
  _LocationmanState createState() => _LocationmanState();
}

class _LocationmanState extends State<Locationman> {
  String dropdownValue = 'Select Location';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 130.0,
              ),
              Text(
                "Welcome to Hamara Store",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              Image.asset(
                "images/hamara green.png",
              ),
              SizedBox(
                height: 60.0,
              ),
              Container(
                width: 330.0,
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 170.0),
                    child: Icon(Icons.expand_more),
                  ),
                  iconSize: 30,
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    'Select Location',
                    'One',
                    'Two',
                    'Free',
                    'Four'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 17),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 330.0,
                height: 60.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.red,
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Homepage.id);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
