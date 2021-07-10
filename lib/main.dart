import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/registration.dart';
import 'package:flutter_application_1/utils/myroutes.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryTextTheme: GoogleFonts.latoTextTheme()),
      // home: Homepage(),
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.loginRoutes: (context) => Loginpage(),
        MyRoutes.homeRoutes: (context) => Homepage(),
        MyRoutes.registrationRoutes: (context) => Registration()
      },
    );
  }
}
