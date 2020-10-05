import 'package:flutter/material.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class SaveProfile extends StatefulWidget {
  @override
  _SaveProfileState createState() => _SaveProfileState();
}

class _SaveProfileState extends State<SaveProfile> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        appBar: CustomAppBar(
          scaffoldKey: _globalKey,
        ),
        drawer: CustomSidebar(
          currentPage: 'Personal Details (Required)',
        ),
        body: ListView(children: <Widget>[
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                  child: Text(
                "NEW PROFILE",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ))),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15.0),
              child: Material(
                  elevation: 10.0,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Section 4: Save Profile",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                          "Done filling your profile, save and move to the next "
                          "section on the application wizard using the menu icon on the top"
                          " left."),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Previous",
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          RaisedButton(
                            color: Colors.lightGreen,
                            onPressed: () {},
                            child: Text(
                              "Save",
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                    )
                  ])))
        ]));
  }
}
