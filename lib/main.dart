import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kootii/screens/CreatePasswordScreen.dart';
import 'package:kootii/screens/DebitCardScreen.dart';
import 'package:kootii/screens/OTPEnterScreen.dart';
import 'package:kootii/screens/OTPScreen.dart';
import 'package:kootii/screens/SendMoneyScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DebitCartScreen(),
    );
  }
}
