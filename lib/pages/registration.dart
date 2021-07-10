import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/myroutes.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Registration Page"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/login.png"),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 30.0),
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: "Enter name", labelText: "Name"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter email", labelText: "Email"),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("value "),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.homeRoutes);
                          },
                          child: Text("Register"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
