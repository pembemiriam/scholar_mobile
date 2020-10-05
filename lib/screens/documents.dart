import 'package:flutter/material.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class Documents extends StatefulWidget {
  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        scaffoldKey: _globalKey,
      ),
      drawer: CustomSidebar(
        currentPage: "Documents (Optional)",
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                  child: Text(
                "MY DOCUMENTS",
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
                  Text("(Click on the add button to add a document)")
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.pushNamed(context, '/documentDetails');
        },
        tooltip: 'Add Document',
        child: Icon(Icons.add),
      ),
    );
  }
}
