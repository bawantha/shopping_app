import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: "images/cats/dress.png", image_caption: "Dress"),
          Category(
              image_location: "images/cats/tshirt.png",
              image_caption: "Tshirt"),
          Category(
              image_location: "images/cats/formal.png",
              image_caption: "Formal"),
          Category(
              image_location: "images/cats/jeans.png", image_caption: "Jeans"),
          Category(
              image_location: "images/cats/shoe.png", image_caption: "Shoe"),
          Category(
              image_location: "images/cats/accessories.png",
              image_caption: "Accessories")
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new InkWell(
        onTap: null,
        child: Container(
          alignment: Alignment.center,
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 40,
            ),
            subtitle: new Text(
              image_caption,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
