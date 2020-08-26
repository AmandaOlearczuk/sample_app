import 'package:flutter/material.dart';

import 'package:sample_app/product_manager.dart';

void main() => runApp(MyApp()); //Short function notation in dart

class MyApp extends StatelessWidget {
  //Use stateless instead of stateful wherever possible

  @override
  Widget build(BuildContext context) {
    //Build the MaterialApp widget in a context
    return MaterialApp(

        //App theme
        theme: ThemeData(
            primarySwatch: Colors.deepOrange, accentColor: Colors.deepPurple),

        //Homepage
        home: Scaffold(
          //tab: home
          appBar: AppBar(title: Text("My Sample")),
          body:
              //Button & Product list widget
              ProductManager("First product"),
        ));
  }
}
