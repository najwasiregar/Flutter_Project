import 'package:flutter/material.dart';
import 'buttons/raised_button.dart';
import 'buttons/flat_button.dart';
import 'buttons/icon_button.dart';
import 'buttons/floating_action_button.dart';
import 'buttons/cupertino_button.dart';
import 'buttons/custom_gesture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Buttons Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Buttons Demo')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildNavigationButton(context, 'Raised Button', RaisedButtonDemo()),
          _buildNavigationButton(context, 'Flat Button', FlatButtonDemo()),
          _buildNavigationButton(context, 'Icon Button', IconButtonDemo()),
          _buildNavigationButton(context, 'Floating Action Button', FloatingActionButtonDemo()),
          _buildNavigationButton(context, 'Cupertino Button', CupertinoButtonScreen()),
          _buildNavigationButton(context, 'Custom Gesture', CustomGestureScreen()),
        ]
      )
    );
  }

  Widget _buildNavigationButton(BuildContext context, String title, Widget screen) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
        },
        child: Text(title),
      ),
    );
  }
}