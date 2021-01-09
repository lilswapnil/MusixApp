import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlbumsList extends StatefulWidget {
  @override
  _AlbumsListState createState() => _AlbumsListState();
}

class _AlbumsListState extends State<AlbumsList> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey[850],
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (int index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: <Widget>[ 
                Container(
                  child: Icon(Icons.account_box),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: 
                Text("hi", 
                style: TextStyle(fontSize: 20),),
                )
                ]
             )
          );
        }
        ),
      ),
    );
  }
}