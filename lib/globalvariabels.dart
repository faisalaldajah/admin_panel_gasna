import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'brand_colors.dart';

User currentFirebaseUser;

DatabaseReference rideRef;

bool isAvailable = false;

String availabilityTitle = 'تفعيل';

String newTrip = 'strat';

Color availabilityColor = BrandColors.colorAccent1;

int numberOfGas;

final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
void showSnackBar(String title) {
  final snackbar = SnackBar(
    content: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15),
    ),
  );
  // ignore: deprecated_member_use
  scaffoldKey.currentState.showSnackBar(snackbar);
}
