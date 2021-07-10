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
      body: Column(
        children: [
          Text("Hello Suraj Negi, age is $age"),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Registration"))
        ],
      ),
      drawer: Drawer(),
    );
  }
}
