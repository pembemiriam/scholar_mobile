import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class ApplicationDetails extends StatefulWidget {
  @override
  _ApplicationDetailsState createState() => _ApplicationDetailsState();
}

class _ApplicationDetailsState extends State<ApplicationDetails> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  DateTime selectedDate = DateTime.now();
  final format = DateFormat("yyyy-MM-dd");
  int _programValue = 1;
  int _profileValue = 1;
  int _campusValue = 1;
  int _modeValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        appBar: CustomAppBar(
          scaffoldKey: _globalKey,
        ),
        drawer: CustomSidebar(
          currentPage: 'Create Application (Required)',
        ),
        body: ListView(children: <Widget>[
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                  child: Text(
                "APPLY FOR A PROGRAM",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ))),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15.0),
              child: Material(
                elevation: 10.0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Application Details",
                        style: TextStyle(color: Colors.purple),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton(
                                style: TextStyle(color: Colors.grey.shade600),
                                value: _campusValue,
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
                                    _campusValue = value;
                                  });
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Programs: "),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ButtonTheme(
                                  child: DropdownButton(
                                    value: _programValue,
                                    // iconEnabledColor: Colors.white,

                                    items: [
                                      DropdownMenuItem(
                                        child: Text(""),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Software Engineering"),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Food and Nutrition"),
                                        value: 3,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Science"),
                                        value: 4,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _programValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Profile Name: "),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton(
                                    value: _profileValue,
                                    // iconEnabledColor: Colors.white,

                                    items: [
                                      DropdownMenuItem(
                                        child: Text(""),
                                        value: 1,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _profileValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Study Mode: "),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton(
                                    value: _modeValue,
                                    // iconEnabledColor: Colors.white,

                                    items: [
                                      DropdownMenuItem(
                                        child: Text(""),
                                        value: 1,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _modeValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Admission Type: "),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ButtonTheme(
                                  child: DropdownButton(
                                    value: _programValue,
                                    // iconEnabledColor: Colors.white,

                                    items: [
                                      DropdownMenuItem(
                                        child: Text(""),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Regular"),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Top-Up"),
                                        value: 3,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Transfer"),
                                        value: 4,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _programValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: DateTimeField(
                                    decoration: InputDecoration(
                                        labelText: "Expected start date"),
                                    format: format,
                                    onShowPicker: (context, currentValue) {
                                      return showDatePicker(
                                          context: context,
                                          firstDate: DateTime(1900),
                                          initialDate:
                                              currentValue ?? DateTime.now(),
                                          lastDate: DateTime(2100));
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: DateTimeField(
                                    decoration: InputDecoration(
                                        labelText: "Expected end date"),
                                    format: format,
                                    onShowPicker: (context, currentValue) {
                                      return showDatePicker(
                                          context: context,
                                          firstDate: DateTime(1900),
                                          initialDate:
                                              currentValue ?? DateTime.now(),
                                          lastDate: DateTime(2100));
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.lightGreen,
                                onPressed: () {},
                                child: Text(
                                  "Save",
                                  style: TextStyle(color: Colors.purple),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ]));
  }
}
