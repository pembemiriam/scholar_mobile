import 'package:flutter/material.dart';
import 'package:scholar/screens/applicationProfile.dart';
import 'package:scholar/widgets/customSidebar.dart';
import 'package:scholar/widgets/customAppBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        appBar: CustomAppBar(
          scaffoldKey: _globalKey,
        ),
        drawer: CustomSidebar(
          currentPage: 'Home',
        ),
        body: Stack(children: <Widget>[
          ListView(children: <Widget>[
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
                      "Hi There! Welcome to SCHOLAR",
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
                            MaterialPageRoute(
                                builder: (context) => ApplicationProfile()),
                          );
                        },
                        elevation: 11,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        child: Text("Start Application Here!",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ]),
            )
          ])
        ]));
  }
}
