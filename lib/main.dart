import 'package:admin_panel_gasna/Screen/ReportPage.dart';
import 'package:admin_panel_gasna/Screen/login.dart';
import 'package:admin_panel_gasna/Screen/registration.dart';
import 'package:admin_panel_gasna/globalvariabels.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screen/MainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  currentFirebaseUser = await FirebaseAuth.instance.currentUser;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Gasna',
      theme: ThemeData(
        fontFamily: 'JF-Flat-regular',
        primarySwatch: Colors.blue,
      ),
      initialRoute: (currentFirebaseUser == null) ? LoginPage.id : MainPage.id,
      routes: {
        MainPage.id: (context) => MainPage(),
        RegistrationPage.id: (context) => RegistrationPage(),
        LoginPage.id: (context) => LoginPage(),
        ReportPage.id: (context) => ReportPage(),
      },
    );
  }
}
