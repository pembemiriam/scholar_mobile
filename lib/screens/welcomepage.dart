import 'package:flutter/material.dart';
import 'package:scholar/screens/login.dart';
import 'package:scholar/screens/signup.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              SizedBox(height: 70),
              Text(
                "Scholar (SCHOLAR)",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.lightGreen,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(top: 60.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text(
                      "Hi There! Welcome to SCHOLAR.",
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "You can apply anytime of the year with our rolling "
                      "admissions.",
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 20.0, top: 40),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.purple,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        elevation: 11,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        child: Text("Login with Gmail",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 30.0),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.green,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        elevation: 11,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        child: Text("Login with Email",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("New to SCHOLAR?",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        FlatButton(
                          child: Text("Create Your Account"),
                          textColor: Colors.indigo,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
