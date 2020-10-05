import 'package:flutter/material.dart';
import 'package:scholar/utils/formValidation.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  final FormValidation _validation = new FormValidation();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: CustomAppBar(
        scaffoldKey: _globalKey,
      ),
      drawer: CustomSidebar(
        currentPage: "profile",
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Material(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                      child: Center(child: Text("Profile settings"))),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            validator: _validation.validateName,
                            decoration: InputDecoration(labelText: "Name"),
                          ),
                          TextFormField(
                            validator: _validation.validateEmail,
                            decoration:
                                InputDecoration(labelText: "Email(public)"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Website"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Location"),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 2),
                            width: double.infinity,
                            child: ButtonTheme(
                              // alignedDropdown: true,
                              child: DropdownButton(
                                hint: Text("Time zone"),
                                items: [],
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Gravatar email"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Bio"),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            child: FlatButton(
                              color: Colors.green,
                              child: Text(
                                "Save",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                if (_formKey.currentState.validate()) {

                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
