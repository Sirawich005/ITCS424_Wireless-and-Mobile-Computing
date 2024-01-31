
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Pink Flower",
                description: "This is the flower that every one love, it's very beautiful flower with the very cheap price ",
                price: 25 ,
                image: "asset/Pink_flower.jpg"),
            ProductBox(
                name: "white flower",
                description: "This is the white flower that every time you look at it you will feel relaxing",
                price: 70,
                image: "asset/Prunus_flower.jpg"),
            ProductBox(
                name: "Red Flower",
                description: "This is the red flower that when u look at it u will feel the energy coming from the flower",
                price: 90,
                image: "asset/red-flower.jpg"),
            ProductBoxUrl(
                name: "Pragus flower",
                description:
                "This is the very rare flower only found in the dessert",
                price: 150,
                image: "https://cdn.stocksnap.io/img-thumbs/960w/orange-flowers_BEZLL8TLGD.jpg"),
            ProductBoxUrl(
                name: "Daisy flower ",
                description: "this is the very cute flower. This is the most popular flower we sell that u can give someone u lovve",
                price: 65,
                image: "https://upload.wikimedia.org/wikipedia/commons/e/e7/Leucanthemum_vulgare_%27Filigran%27_Flower_2200px.jpg"),
            ProductBoxUrl(
                name: "Dessert Flower",
                description: "This is the flower that usually grow only in the dessert which is very rare and very expensive",
                price: 20,
                image: "https://wallpapers.com/images/high/flower-pictures-xyegwlodedyumexq.webp"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(image),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(this.name,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(this.description),
                              Text("Price: " + this.price.toString()),
                            ],
                          )))
                ])));
  }
}

class ProductBoxUrl extends StatelessWidget {
  ProductBoxUrl({Key? key, required this.name, required this.description, required this.price, required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.network(image),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(this.name,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(this.description),
                              Text("Price: " + this.price.toString()),
                            ],
                          )))
                ])));
  }
}
