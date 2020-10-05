import 'package:flutter/material.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class ApplicationProfile extends StatefulWidget {
  @override
  _ApplicationProfileState createState() => _ApplicationProfileState();
}

class _ApplicationProfileState extends State<ApplicationProfile> {
  GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        scaffoldKey: _globalKey,
      ),
      drawer: CustomSidebar(
        currentPage: "Personal Details (Required)",
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                  child: Text(
                "APPLICATION PROFILES",
                style: TextStyle(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ))),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: <Widget>[
                  Text(
                    "No Profile Found",
                    style: TextStyle(fontSize: 28),
                  ),
                  Text("(Click on the add button to add a profile)")
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.pushNamed(context, '/personalInfo');
        },
        tooltip: 'Add Application Profile',
        child: Icon(Icons.add),
      ),
    );
  }
}
