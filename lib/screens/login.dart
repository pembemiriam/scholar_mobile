import 'package:flutter/material.dart';
import 'package:scholar/screens/homepage.dart';
import 'package:scholar/screens/signup.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 450,
            child: RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.green.shade400, Colors.lightGreen],
                    [Colors.lightGreen, Colors.lightGreen.shade100],
                  ],
                  durations: [19440, 10800],
                  heightPercentages: [0.20, 0.25],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.bottomRight,
                ),
                waveAmplitude: 0,
                size: Size(
                  double.infinity,
                  double.infinity,
                ),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              SizedBox(height: 100),
              Container(
                  height: 130,
                  child: Text(
                    "SCHOLAR",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                    textAlign: TextAlign.center,
                  )),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 100),
                child: Form(
                  child: Column(children: <Widget>[
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: TextField(
                        onChanged: (String value) {},
                        cursorColor: Colors.lightGreen,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Icon(
                                Icons.email,
                                color: Colors.lightGreen,
                              ),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13)),
                      ),
                    ),
                    SizedBox(height: 15),
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: TextField(
                        obscureText: true,
                        onChanged: (String value) {},
                        cursorColor: Colors.lightGreen,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Icon(
                                Icons.lock,
                                color: Colors.lightGreen,
                              ),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13)),
                      ),
                    ),
                    SizedBox(height: 15),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      color: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      child:
                          Text("Login", style: TextStyle(color: Colors.white)),
                    ),
                  ]),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text(
                    "Don't have an account? Sign up!",
                    style: TextStyle(color: Colors.lightGreen),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
