import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class Myproducts extends StatelessWidget {
  final Item item;
  const Myproducts({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          onTap: () {
            print(item.name);
          },
          leading: Image.network(item.imageurl),
          title: Text(item.name),
          subtitle: Text(item.dec),
          trailing: Text(
            "\$" + item.price.toString(),
            textScaleFactor: 1.5,
          ),
        ),
      ),
    );
  }
}
