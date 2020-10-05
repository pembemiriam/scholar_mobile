import 'package:flutter/material.dart';
import 'package:scholar/screens/noResult.dart';
import 'package:scholar/screens/profile.dart';
import 'package:scholar/widgets/customSidebar.dart';

import 'account.dart';
import 'login.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          brightness: Brightness.light,
          elevation: 10.0,
          backgroundColor: Colors.lightGreen,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/homePage');
                },
                child: Text(
                  'SCHOLAR',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5),
                ),
              ),
              Row(
                children: <Widget>[
                  DropdownButtonHideUnderline(
                      child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton(
                      // value: _value,
                      iconEnabledColor: Colors.white,

                      hint: Row(
                        children: <Widget>[
                          Icon(Icons.account_circle),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      items: [
                        DropdownMenuItem(
                          child: FlatButton(
                            child: Text("Profile"),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile()));
                            },
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Account()));
                              },
                              child: Text("Account")),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: FlatButton(
                              onPressed: () {}, child: Text("Networks")),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              child: Text("Sign out")),
                          value: 3,
                        )
                      ],
                      onChanged: (value) {
                        /* if(value == 1){
                      Navigator.push(context, MaterialPageRoute(builder:
                      (context) => Profile()));
                    }else if(value == 2){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => Account()));
                    }*/
                      },
                    ),
                  ))
                ],
              )
            ],
          ),
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.insert_drive_file),
                text: "Applications",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Personal Details",
              ),
              Tab(
                icon: Icon(Icons.book),
                text: "Qualifications",
              ),
              Tab(icon: Icon(Icons.note), text: "Work experience"),
              Tab(icon: Icon(Icons.people), text: "Parents/Guardians"),
              Tab(icon: Icon(Icons.book), text: "Documents"),
              Tab(icon: Icon(Icons.note), text: "Admission letters"),
            ],
          ),
        ),
        drawer: CustomSidebar(
          currentPage: "Dashboard",
        ),
        body: TabBarView(
          children: <Widget>[
            NoResult(),
            NoResult(),
            NoResult(),
            NoResult(),
            NoResult(),
            NoResult(),
            NoResult(),
          ],
        ),
      ),
    );
  }
}
