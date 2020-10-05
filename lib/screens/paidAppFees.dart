import 'package:flutter/material.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class PaidAppFees extends StatefulWidget {
  @override
  _PaidAppFeesState createState() => _PaidAppFeesState();
}

class _PaidAppFeesState extends State<PaidAppFees> {
  GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        scaffoldKey: _globalKey,
      ),
      drawer: CustomSidebar(
        currentPage: "Pay Application Fees (Required)",
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                  child: Text(
                "PAID APPLICATION FEES",
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
                    "No Result Found",
                    style: TextStyle(fontSize: 28),
                  ),
                  Text("(Click on the add button to pay application fee)")
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.pushNamed(context, '/appFeePayments');
        },
        tooltip: 'Pay application fee',
        child: Icon(Icons.add),
      ),
    );
  }
}
