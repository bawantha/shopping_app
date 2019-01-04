import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
      elevation: 0,
      backgroundColor: Colors.red,
      title: new Text("FashApp"),
      centerTitle: true,
      actions: <Widget>[
        new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () => debugPrint("Search")),
        new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () => debugPrint("Cart"))
      ],
    ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
