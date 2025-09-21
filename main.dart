import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// List of Cards with size
List<StaggeredGridTile> _cardTile = [
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 2,
    child: BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: BackGroundTile(backgroundColor: Colors.orange, icondata: Icons.ac_unit),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 2,
    child: BackGroundTile(backgroundColor: Colors.pink, icondata: Icons.landscape),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1,
    child: BackGroundTile(backgroundColor: Colors.green, icondata: Icons.portrait),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(backgroundColor: Colors.blue, icondata: Icons.access_alarms),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(backgroundColor: Colors.indigo, icondata: Icons.satellite_outlined),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
  ),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      //Title of an App
      title: 'GFG APP',
      
      //Theme of an App
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData.dark(),
      
     // First Screen of App
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GFG App"),
      ),
      body: Container(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: _cardTile,
        ),
      ),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;

  BackGroundTile({required this.backgroundColor, required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(icondata, color: Colors.white),
    );
  }
}