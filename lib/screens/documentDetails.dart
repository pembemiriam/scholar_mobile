import 'package:flutter/material.dart';
import 'package:scholar/utils/formValidation.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class DocumentDetails extends StatefulWidget {
  @override
  _DocumentDetailsState createState() => _DocumentDetailsState();
}

class _DocumentDetailsState extends State<DocumentDetails> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  int _programValue = 1;
  FormValidation _fieldValidator = new FormValidation();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        appBar: CustomAppBar(
          scaffoldKey: _globalKey,
        ),
        drawer: CustomSidebar(
          currentPage: 'Documents (Optional)',
        ),
        body: ListView(children: <Widget>[
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                  child: Text(
                "NEW DOCUMENT",
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
                        "Document Details",
                        style: TextStyle(color: Colors.purple),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              validator: _fieldValidator.validateField,
                              decoration:
                                  InputDecoration(labelText: "Document Title"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Related Program: "),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.lightGreen,
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {

                                  }
                                },
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
