import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]); //Constructor

  @override
  Widget build(BuildContext context) {
    return Column(
        //List of products
        children: products
            .map((element) => Card(
                    child: Column(children: <Widget>[
                  Image.asset("assets/smiley.jpg"),
                  Text(element)
                ])))
            .toList());
  }
}
