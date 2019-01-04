import 'package:flutter/material.dart';
import '../pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Men Blazer",
      "picture": "images/products/blazer1.jpeg",
      'old_price': 120,
      'price': 80
    },
    {
      "name": "Women Blazer",
      "picture": "images/products/blazer2.jpeg",
      'old_price': 160,
      'price': 110
    },
    {
      "name": "dress1",
      "picture": "images/products/dress1.jpeg",
      'old_price': 142,
      'price': 120
    },
    {
      "name": "dress 2",
      "picture": "images/products/dress2.jpeg",
      'old_price': 160,
      'price': 110
    },
    {
      "name": "hills 1",
      "picture": "images/products/hills1.jpeg",
      'old_price': 160,
      'price': 110
    },
    {
      "name": "hills 2",
      "picture": "images/products/hills2.jpeg",
      'old_price': 160,
      'price': 110
    },
    {
      "name": "pant 1",
      "picture": "images/products/pants1.jpg",
      'old_price': 160,
      'price': 110
    },
    {
      "name": "pant 2",
      "picture": "images/products/pants2.jpeg",
      'old_price': 160,
      'price': 110
    },
    {
      "name": "dress 2",
      "picture": "images/products/shoe1.jpg",
      'old_price': 160,
      'price': 110
    },
    {
      "name": "skirt 1",
      "picture": "images/products/skt1.jpeg",
      'old_price': 160,
      'price': 110
    },
    {
      "name": "skirt 2",
      "picture": "images/products/skt2.jpeg",
      'old_price': 160,
      'price': 110
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price']);
        });
  }
}

class SingleProduct extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const SingleProduct(
      {Key key,
      this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new ProductDetails())),
              child: GridTile(
                child: Image.asset(prod_picture,
                fit:BoxFit.cover),
                footer: Container(
                  
                  color: Colors.white70,
                  child: ListTile(
                    subtitle: new Text('\$$prod_old_price',style: new TextStyle(
                                color: Colors.red
                    ),),
                    title: new Text('\$$prod_price',style: new TextStyle(
                      fontSize: 10
                    ),),
                    leading: new Text(
                      prod_name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
