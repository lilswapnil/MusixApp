import 'package:flutter/material.dart';
class ArtistsList extends StatefulWidget {
  @override
  _ArtistsListState createState() => _ArtistsListState();
}

class _ArtistsListState extends State<ArtistsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: List.generate(10, (int index) {
          return ListTile(
            onTap: () {},
            leading: Icon(Icons.account_box, color: Colors.white,),
            title: Text("Song Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
            subtitle: Text("Artist",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
            trailing: Icon(Icons.more_vert, color: Colors.white,),
          );
        }),
      ),
      color: Colors.grey[850],
    );
  }
}