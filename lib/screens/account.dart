import 'package:flutter/material.dart';
import 'package:scholar/utils/formValidation.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
      drawer: CustomSidebar(),
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
                      child: Center(child: Text("Account settings",
                        style: TextStyle(color: Colors.purple),
                      ))),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            validator: _fieldValidator.validateEmail,
                            decoration: InputDecoration(labelText: "Email"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,
                            decoration: InputDecoration(labelText: "Username"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validatePassword,
                            obscureText: true,
                            decoration:
                                InputDecoration(hintText: "New password"),
                          ),
                          TextFormField(
                            obscureText: true,
                            validator: _fieldValidator.validatePassword,
                            decoration:
                                InputDecoration(labelText: "Current password"),
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
