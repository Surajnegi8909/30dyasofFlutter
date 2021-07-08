import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final age = 25;

    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello Suraj Negi, age is $age"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
