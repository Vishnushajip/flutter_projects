import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile UI'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.lightBlueAccent],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  color: Colors.white,
                  elevation: 4,
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.blue),
                    title: Text('johndoe@example.com'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  color: Colors.white,
                  elevation: 4,
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.blue),
                    title: Text('+1234567890'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
