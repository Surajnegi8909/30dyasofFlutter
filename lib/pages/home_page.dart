import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/MyDrawer.dart';
import 'package:flutter_application_1/widgets/Myproducts.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedata = jsonDecode(catalogJson);
    var productdata = decodedata["Products"];
    print(productdata);
  }

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return Myproducts(
            item: dummylist[index],
            // item: CatalogModel.items[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
