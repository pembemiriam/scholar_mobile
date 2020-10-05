import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:scholar/screens/contactDetails.dart';
import 'package:scholar/utils/formValidation.dart';
import 'package:scholar/widgets/customAppBar.dart';
import 'package:scholar/widgets/customSidebar.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  DateTime selectedDate = DateTime.now();
  final format = DateFormat("yyyy-MM-dd");
  int _genderValue = 1;
  int _bloodgroupValue = 1;
  int _religionValue = 1;
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
                      "Section 1: Personal Information",
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
                                InputDecoration(labelText: "Profile Title"),
                          ),
                          TextFormField(
                            validator: _fieldValidator.validateField,

                            decoration:
                                InputDecoration(labelText: "First name"),
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Middle name"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Last name"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Gender: "),
                              SizedBox(
                                width: 10.0,
                              ),
                              ButtonTheme(
                                child: DropdownButton(
                                  value: _genderValue,
                                  // iconEnabledColor: Colors.white,

                                  items: [
                                    DropdownMenuItem(
                                      child: Text(""),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Male"),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Female"),
                                      value: 3,
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _genderValue = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          DateTimeField(
                            decoration:
                                InputDecoration(labelText: "Date of birth"),
                            format: format,
                            onShowPicker: (context, currentValue) {
                              return showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1900),
                                  initialDate: currentValue ?? DateTime.now(),
                                  lastDate: DateTime(2100));
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Birth Place"),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Blood group: "),
                              SizedBox(
                                width: 10.0,
                              ),
                              ButtonTheme(
                                child: DropdownButton(
                                  value: _bloodgroupValue,
                                  // iconEnabledColor: Colors.white,

                                  items: [
                                    DropdownMenuItem(
                                      child: Text(""),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("A+"),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("A-"),
                                      value: 3,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("B+"),
                                      value: 4,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("B-"),
                                      value: 5,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("O+"),
                                      value: 6,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("O-"),
                                      value: 7,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("AB+"),
                                      value: 8,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("AB-"),
                                      value: 9,
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _bloodgroupValue = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Mother Tongue"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Religion: "),
                              SizedBox(
                                width: 10.0,
                              ),
                              ButtonTheme(
                                child: DropdownButton(
                                  value: _religionValue,
                                  // iconEnabledColor: Colors.white,

                                  items: [
                                    DropdownMenuItem(
                                      child: Text(""),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Christainity"),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Islam"),
                                      value: 3,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Buddhist"),
                                      value: 4,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Hindu"),
                                      value: 5,
                                    ),
                                    DropdownMenuItem(
                                      child:
                                          Text("African traditional religion"),
                                      value: 6,
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _religionValue = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Current Qualification"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactDetails()));

                        }

                      },
                      child: Text(
                        "Forward",
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
