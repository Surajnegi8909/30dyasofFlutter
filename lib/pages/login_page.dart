import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/myroutes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool isclicked = false;
  final _fromkey = GlobalKey<FormState>();

  valuecheck(BuildContext context) async {
    if (_fromkey.currentState!.validate()) {
      setState(() {
        isclicked = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        isclicked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Form(
                key: _fromkey,
                child: Padding(
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
                            hintText: "Enter username", labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be blank";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be blank";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        color: Colors.blue,
                        borderRadius: isclicked
                            ? BorderRadius.circular(45)
                            : BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () => valuecheck(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 2),
                            width: isclicked ? 45 : 150,
                            height: 45,
                            alignment: Alignment.center,
                            child: isclicked
                                ? CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white))
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, MyRoutes.registrationRoutes);
                          },
                          child: Text("Registration"))
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
