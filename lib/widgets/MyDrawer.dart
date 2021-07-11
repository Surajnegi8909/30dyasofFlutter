import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/myroutes.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
              curve: Curves.fastLinearToSlowEaseIn,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Suraj Negi",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  "surajnegi@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: ExactAssetImage('assets/images/pic.jpg')),
              ),
            ),
            SizedBox(
              height: 1.0,
              child: new Center(
                child: new Container(
                  margin:
                      new EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
                  height: 5.0,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 1.0,
              child: new Center(
                child: new Container(
                  margin:
                      new EdgeInsetsDirectional.only(start: 60.0, end: 180.0),
                  height: 5.0,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 1.0,
              child: new Center(
                child: new Container(
                  margin:
                      new EdgeInsetsDirectional.only(start: 60.0, end: 180.0),
                  height: 5.0,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoutes);
              },
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Mail Me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 1.0,
              child: new Center(
                child: new Container(
                  margin:
                      new EdgeInsetsDirectional.only(start: 60.0, end: 180.0),
                  height: 5.0,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pushNamed(context, MyRoutes.loginRoutes);
                setState(() {});
              },
              leading: Icon(
                CupertinoIcons.arrowtriangle_left,
                color: Colors.white,
              ),
              title: Text(
                "Logout ",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 1.0,
              child: new Center(
                child: new Container(
                  margin:
                      new EdgeInsetsDirectional.only(start: 60.0, end: 180.0),
                  height: 5.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
