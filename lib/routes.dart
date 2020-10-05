import 'package:flutter/material.dart';
import 'package:scholar/screens/addParent.dart';
import 'package:scholar/screens/appFeePayments.dart';
import 'package:scholar/screens/applicationDetails.dart';
import 'package:scholar/screens/applicationProfile.dart';
import 'package:scholar/screens/applications.dart';
import 'package:scholar/screens/dashboard.dart';
import 'package:scholar/screens/documentDetails.dart';
import 'package:scholar/screens/documents.dart';
import 'package:scholar/screens/homepage.dart';
import 'package:scholar/screens/login.dart';
import 'package:scholar/screens/paidAppFees.dart';
import 'package:scholar/screens/parents.dart';
import 'package:scholar/screens/personalInfo.dart';
import 'package:scholar/screens/qualification.dart';
import 'package:scholar/screens/qualificationDetails.dart';
import 'package:scholar/screens/signup.dart';
import 'package:scholar/screens/workDetails.dart';
import 'package:scholar/screens/workExperience.dart';

import 'screens/profile.dart';

class Routes{
  Map<String, WidgetBuilder> routes = {
    '/login': (context) => Login(),
    '/signup': (context) => SignUp(),
    '/homePage': (context) => HomePage(),
    '/profile' : (context) => Profile(),
    '/applicationProfiles' : (context) => ApplicationProfile(),
    '/personalInfo' : (context) => PersonalInfo(),
    '/workExperience': (context) => WorkExperience(),
    '/workDetails' : (context) => WorkDetails(),
    '/qualification' : (context) => Qualification(),
    '/documents' : (context) => Documents(),
    '/applications' : (context) => Applications(),
    '/applicationDetails' : (context) => ApplicationDetails(),
    '/qualificationDetails' : (context) => QualificationDetails(),
    '/parents' : (context) => Parents(),
    '/addParent' : (context) => AddParent(),
    '/documentDetails' : (context) => DocumentDetails(),
    '/paidAppFees' : (context) => PaidAppFees(),
    '/appFeePayments' : (context) => AppFeePayments(),
    '/dashboard' : (context) => Dashboard(),










  };




}