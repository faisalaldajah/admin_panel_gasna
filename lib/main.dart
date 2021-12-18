import 'package:admin_panel_gasna/Screens/AdminLogin.dart';
import 'package:admin_panel_gasna/Screens/ReportPage.dart';
import 'package:admin_panel_gasna/Screens/registration.dart';
import 'package:admin_panel_gasna/globalvariabels.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screen/AdminMainPage.dart';

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
      initialRoute: (currentFirebaseUser == null) ? AdminLoginPage.id : AdminMainPage.id,
      routes: {
        AdminMainPage.id: (context) => AdminMainPage(),
        AdminRegistrationPage.id: (context) => AdminRegistrationPage(),
        AdminLoginPage.id: (context) => AdminLoginPage(),
        AdminReportPage.id: (context) => AdminReportPage(),
      },
    );
  }
}
