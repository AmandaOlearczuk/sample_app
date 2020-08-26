import 'package:flutter/material.dart';
import 'package:sample_app/product_control.dart';

import './products.dart';

/*
 * ProductManger is a widget that we can use to manage products
 */
class ProductManager extends StatefulWidget {
  final String firstProduct;

//Constructor
// The default value is 'Sweets Tester'
// The [] is for not named arguments, {} is for named arguments
  ProductManager([this.firstProduct = 'Sweets Tester']);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

/*----------------------------------------------------------------------------*/
class _ProductManagerState extends State<ProductManager> {
//When something in the list of products changes, build will execute again.
//We use setState() in Button onPressed listener to inform flutter that a change has been made.
//This "updating" is possible due to using StatefulWidget

  //Final in Dart means that you can't re-assign something else to the list variable itself,
  // BUT you can add items to the list or do other things to modify the existing list.
  //Quick memo: You can use "." on a variable to do things to it but not "="
  // Tip: You can add const[] to make a list unmodifiable.
  final List<String> products = [];

  @override
  void initState() {
    //First method to execute, before build()
    products.add(widget
        .firstProduct); //'widget.<your_var>' allows us to access variables from the upper class in this case ProductManager class.
    super.initState();
  }

// Called before build() - executed if ProjectManager recieves new data
// For example calling ProjectManager('first product'), then lter ProjectManager('second product');
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print("DEBUG: didUpdateWidget()");
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      //This tells flutter to update the widget with new info by executing build()
      products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Button
      Container(
          margin: EdgeInsets.all(10.0), //Margin in pixels
          child: ProductControl(_addProduct)),

      //Products list widget
      Products(products)
    ]);
  }
}
