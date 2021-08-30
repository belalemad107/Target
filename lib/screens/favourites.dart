
import 'package:flutter/material.dart';
class Favourites extends StatefulWidget {

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).primaryColor,title: Text('Favourites'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Container(
            width: 150,
            height: 150,
            child: Image.asset("assets/images/favourite.png",color: Colors.grey[300],))),
      ],),
    );
  }
}
