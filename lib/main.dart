import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'Pages/ForgetPasswordPage.dart';
import 'Pages/GetStartPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/ItemPage.dart';
import 'Pages/LoginPage.dart';
import 'Pages/SignupPage.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Nike',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFCEDDEE),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => GetStartPage(),
        "loginPage": (context) => LoginPage(),
        "signupPage": (context) => SignupPage(),
        "homePage": (context) => HomePage(),
        "forgetPasswordPage": (context) => ForgetPassworPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}

