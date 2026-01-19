import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(HRMSApp());
}

class HRMSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HRMS",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}
