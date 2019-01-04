import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'component/horizontal_listview.dart';
import 'component/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg')
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotColor: Colors.white70,
        dotSize: 5.0,
      ),
    );
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
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
//            Header part of drawer
              new UserAccountsDrawerHeader(
                accountName: new Text("Jhone Doe"),
                accountEmail: new Text("jhonedoe@email.com"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.pink,
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: new Text("Home Page"),
                  leading: new Icon(Icons.home),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: new Text("My Account"),
                  leading: new Icon(Icons.person),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: new Text("My Orders"),
                  leading: new Icon(Icons.shopping_basket),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: new Text("Catergories"),
                  leading: new Icon(Icons.dashboard),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: new Text("Favourites"),
                  leading: new Icon(Icons.favorite),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: new Text("Settings"),
                  leading: new Icon(Icons.settings),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: new Text("About"),
                  leading: new Icon(
                    Icons.help,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
        body: new ListView(
          children: <Widget>[
//          image slider
            image_carousel,
//          padding for categories
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Catergories"),
            ),

//          HORIZONTAL ITEMS LIST
            HorizontalList(),
            new Padding(
              padding: const EdgeInsets.all(12.0),
              child: new Text("Recent Prodcuts"),
            ),
//            Recent Products
            Container(
             height: 320,
             child: Products(),
            ),

//          Horizontal List view begins here
          ],
        ));
  }
}
