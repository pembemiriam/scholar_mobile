import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:scholar/screens/saveProfile.dart';
import 'package:scholar/utils/formValidation.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';

class ParentDetails extends StatefulWidget {
  @override
  _ParentDetailsState createState() => _ParentDetailsState();
}

class _ParentDetailsState extends State<ParentDetails> {
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
                      "Section 3: Parent Details",
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
                            validator: _fieldValidator.validateEmail,
                            decoration: InputDecoration(labelText: "Email"),
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
                                      builder: (context) => SaveProfile()));

                            }
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SaveProfile()));
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
