import 'package:flutter/material.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class AppFeePayments extends StatefulWidget {
  @override
  _AppFeePaymentsState createState() => _AppFeePaymentsState();
}

class _AppFeePaymentsState extends State<AppFeePayments> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        appBar: CustomAppBar(
          scaffoldKey: _globalKey,
        ),
        drawer: CustomSidebar(
          currentPage: 'Pay Application Fees (Required)',
        ),
        body: ListView(children: <Widget>[
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.grey.shade300,
            child: Center(
                child: Text(
              "APPLICATION FEE PAYMENTS",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            )),
          ),
          Card(
            elevation: 15,
            margin: EdgeInsets.all(8),
            color: Colors.lightBlue,
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 40, left: 10, right: 10),
              child: Column(
                children: <Widget>[
                  Divider(
                    color: Colors.white,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Payment Methods",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Receiver Number",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Instructions",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text(
                          "MTN MoMo",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          softWrap: false,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Orange Money",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          softWrap: false,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
        ]));
  }
}
