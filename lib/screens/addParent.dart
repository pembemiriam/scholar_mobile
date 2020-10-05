import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:scholar/utils/formValidation.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class AddParent extends StatefulWidget {
  @override
  _AddParentState createState() => _AddParentState();
}

class _AddParentState extends State<AddParent> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
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
        currentPage: 'Parent Details (Optional)',
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                  child: Text(
                "NEW PARENT DETAILS",
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
                      "Parent Details",
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
                            validator: _fieldValidator.validateName,
                            decoration:
                                InputDecoration(labelText: "Full Names"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration: InputDecoration(labelText: "Relation"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration: InputDecoration(labelText: "Education"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration:
                                InputDecoration(labelText: "Occupation"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration: InputDecoration(labelText: "Address"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Nationality: "),
                              CountryListPick(
                                appBarBackgroundColor: Colors.amber,
                                isShowTitle: true,
                                isDownIcon: true,
                                initialSelection: '+237',
                                showEnglishName: true,
                                onChanged: (CountryCode code) {
                                  print(code.name);
                                },
                              ),
                            ],
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration:
                                InputDecoration(labelText: "State/Region"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration: InputDecoration(labelText: "City"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration: InputDecoration(labelText: "Phone"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration: InputDecoration(labelText: "Mobile"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration: InputDecoration(labelText: "Email"),
                          ),
                        ],
                      ),
                    ),
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
    );
  }
}
