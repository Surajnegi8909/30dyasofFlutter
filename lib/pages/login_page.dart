import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/myroutes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool isclicked = false;
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
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
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          isclicked = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        setState(() {
                          if (name.length == 0) {
                            print("null");
                            Fluttertoast.showToast(
                                msg: "Name cannot be blank",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          } else {
                            Navigator.pushNamed(context, MyRoutes.homeRoutes);
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        width: isclicked ? 45 : 150,
                        height: 45,
                        alignment: Alignment.center,
                        child: isclicked
                            ? CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.white))
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: isclicked
                                ? BorderRadius.circular(45)
                                : BorderRadius.circular(8)),
                      ),
                    ),
                    // ElevatedButton(
                    //   style: TextButton.styleFrom(
                    //       backgroundColor: Colors.blue.shade400,
                    //       minimumSize: Size(200, 40)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    //     print("hello");
                    //   },
                    //   child: Text("Login"),
                    // ),
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
              )
            ],
          ),
        )));
  }
}
