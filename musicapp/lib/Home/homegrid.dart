import 'package:flutter/material.dart';

class HomeGridBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomeGridBuilder();
  }
}

class _HomeGridBuilder extends State<HomeGridBuilder> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.5, 1],
                  colors: [Colors.grey[850], Colors.blue])),
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: new ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(left: 16.0, bottom: 10.0),
                      child: new Text(
                        'Welcome',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Container(
                        child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    )),
                  ],
                ),

//RECENTLY PLAYED
                new Container(
                  margin:
                      const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                  child: new Text(
                    'Recently Played',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Container(
                  //holds the horizontal grid list
                  height: 150.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: new List.generate(10, (int index) {
                      return new Card(
                        //actual grid list cards
                        color: Colors.blue[index * 100],
                        child: new Container(
                            //card containts
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black,
                            )),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: new Text(
                                "$index",
                              ),
                            )),
                      );
                    }),
                  ),
                ),
//TOP ALBUMS
                new Container(
                  margin:
                      const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                  child: new Text(
                    'Top Albums',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                new Container(
                  //holds the horizontal grid list
                  height: 150.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: new List.generate(10, (int index) {
                      return new Card(
                        //actual grid list cards
                        color: Colors.blue[index * 100],
                        child: new Container(
                            //card containts
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black,
                            )),
                            child: Align(
                              alignment: Alignment(-0.9, -1),
                              child: new Text(
                                "$index",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      );
                    }),
                  ),
                ),

//RECENTLY ADDED

                new Container(
                  margin:
                      const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                  child: new Text(
                    'Favorite Albums',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                new Container(
                  //holds the horizontal grid list
                  height: 150.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: new List.generate(10, (int index) {
                      return new Card(
                        //actual grid list cards
                        color: Colors.blue[index * 100],
                        child: new Container(
                            //card containts
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black,
                            )),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: new Text(
                                "$index",
                              ),
                            )),
                      );
                    }),
                  ),
                ),
//FAVORITE ALBUMS
                new Container(
                  margin:
                      const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                  child: new Text(
                    'Recently Added',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                new Container(
                
                  //holds the horizontal grid list
                  height: 150.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: new List.generate(10, (int index) {
                      return new Card(
                        //actual grid list cards
                        color: Colors.blue[index * 100],
                        child: new Container(
                            //card containts
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black,
                            )),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: new Text(
                                "$index",
                              ),
                            )),
                      );
                    }),
                  ),
                ),

//TOP SONGS
                new Container(
                  margin:
                      const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                  child: new Text(
                    'Top Songs',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
/*
                new Container(
                  color: Colors.amber,
                  //holds the horizontal grid list
                  height: 300.0,
                  child: new GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 4,
                  mainAxisSpacing: 20,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(20, (index) {
                    return Expanded(
                      child: Card(
                        //actual grid list cards
                        color: Colors.blue[index * 100],
                        child: new Container(
                            //card containts
                            //width: MediaQuery.of(context).size.width,
                            width: 400,
                            height: 50.0,
                            decoration: BoxDecoration(
                              //shape: BoxShape.rectangle,
                                border: Border.all(
                              color: Colors.black,
                            )),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: new Text(
                                "$index",
                              ),
                            )),
                      )
                    );
                  }),
                ),
                ),
*/
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}
