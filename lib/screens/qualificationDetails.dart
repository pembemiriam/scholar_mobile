import 'package:country_list_pick/country_list_pick.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';
import 'package:intl/intl.dart';

class QualificationDetails extends StatefulWidget {
  @override
  _QualificationDetailsState createState() => _QualificationDetailsState();
}

class _QualificationDetailsState extends State<QualificationDetails> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  DateTime selectedDate = DateTime.now();
  final format = DateFormat("yyyy-MM-dd");
  int _programValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        scaffoldKey: _globalKey,
      ),
      drawer: CustomSidebar(
        currentPage: 'Qualifications (Optional)',
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                  child: Text(
                "CREATE QUALIFICATION",
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
                      "Qualification Details",
                      style: TextStyle(color: Colors.purple),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Institution"),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: DateTimeField(
                                  decoration:
                                      InputDecoration(labelText: "From date"),
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
                                  decoration:
                                      InputDecoration(labelText: "To date"),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Qualification: ",
                              ),
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
                                      child: Text("HND"),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Bachelors Degree"),
                                      value: 3,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Masters Degree"),
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
                              Text(
                                "Our Related Program: ",
                                style: TextStyle(fontSize: 12),
                              ),
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
                        ],
                      ),
                    ),
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
    );
  }
}
