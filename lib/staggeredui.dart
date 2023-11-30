import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StaggeredGridViewPage(),
    );
  }
}

class StaggeredGridViewPage extends StatelessWidget {
  final List<String> images = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/200',
    'https://via.placeholder.com/250',
    'https://via.placeholder.com/180',
    'https://via.placeholder.com/220',
    'https://via.placeholder.com/170',
    'https://via.placeholder.com/190',
    'https://via.placeholder.com/210',
    'https://via.placeholder.com/230',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StaggeredGridView Example'),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) => Card(
          elevation: 4.0,
          child: Image.network(
            images[index],
            fit: BoxFit.cover,
          ),
        ),
        staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
