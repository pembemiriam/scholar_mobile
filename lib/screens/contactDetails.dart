import 'package:flutter/material.dart';
import 'package:scholar/screens/parentDetails.dart';
import 'package:scholar/screens/personalInfo.dart';
import 'package:scholar/utils/formValidation.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';
import 'package:country_list_pick/country_list_pick.dart';

class ContactDetails extends StatefulWidget {
  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
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
        currentPage: 'Personal Details (Required)',
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                  child: Text(
                "NEW PROFILE",
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
                      "Section 2: Contact Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.purple),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Form(
                      key: _formKey,

                      child: Column(
                        children: <Widget>[
                          TextFormField(

                            decoration:
                                InputDecoration(labelText: "Present address"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,

                            decoration:
                                InputDecoration(labelText: "Permanent address"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Country: "),
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
                            decoration:
                                InputDecoration(labelText: "State/Region"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "City"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Phone (Include zip code"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Mobile (Include zip code)"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateEmail,

                            decoration:
                                InputDecoration(labelText: "Personal Email"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Previous",
                            style: TextStyle(color: Colors.purple),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ParentDetails()));

                            }

                          },
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.purple),
                          ),
                        ),
                      ],
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
