import 'package:flutter/material.dart';

class ShopFavorites extends StatefulWidget {
  @override
  _ShopFavoritesState createState() => _ShopFavoritesState();
}

class _ShopFavoritesState extends State<ShopFavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Favorites"),
        centerTitle: false,
      ),
      body: Center(
        child: Text("Favorites", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
