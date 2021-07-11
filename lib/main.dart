import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/registration.dart';
import 'package:flutter_application_1/utils/myroutes.dart';
import 'package:flutter_application_1/widgets/mythemes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lighttheme(context),
      darkTheme: MyThemes.darktheme(context),
      // home: Homepage(),
      routes: {
        "/": (context) => Homepage(),
        MyRoutes.loginRoutes: (context) => Loginpage(),
        MyRoutes.homeRoutes: (context) => Homepage(),
        MyRoutes.registrationRoutes: (context) => Registration()
      },
    );
  }
}
