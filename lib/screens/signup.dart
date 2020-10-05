import 'package:flutter/material.dart';
import 'package:scholar/utils/formValidation.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _value = 1;
  FormValidation _fieldValidator = new FormValidation();
  final _formKey = GlobalKey<FormState>();


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
                  key: _formKey,
                  child: Column(children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.all((Radius.circular(30))),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton(
                              style: TextStyle(color: Colors.grey.shade600),
                              value: _value,
                              items: [
                                DropdownMenuItem(
                                  child: Text("Select Campus"),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("Buea Campus"),
                                  value: 2,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: TextFormField(
                        validator: _fieldValidator.validateEmail,
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
                      child: TextFormField(
                        validator: _fieldValidator.validateName,
                        onChanged: (String value) {},
                        cursorColor: Colors.lightGreen,
                        decoration: InputDecoration(
                            hintText: "Username",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Icon(
                                Icons.person,
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
                      child: TextFormField(
                        validator: _fieldValidator.validatePassword,
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
                        if (_formKey.currentState.validate()) {

                        }
                      },
                      color: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      child: Text("Sign Up",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ]),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "Already registered? Sign in!",
                    style: TextStyle(color: Colors.lightGreen),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
