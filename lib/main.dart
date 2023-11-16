import 'package:flutter/material.dart';
import 'package:scheduleappointment/Screens/Home/FeedbackPaymentAnalysis.dart';
import 'package:scheduleappointment/Screens/Home/home.dart';
import 'package:scheduleappointment/Screens/Home/superadminProfile.dart';
import 'package:scheduleappointment/Screens/Onboarding/Onboarding.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // bool isLoggedIn = await AppManager.isLoggedIn();
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,

    home: SuperAdminProfile(),

    theme: ThemeData(
      primaryColor: Color(0xFF00E0C7),
    ),

  ));
}