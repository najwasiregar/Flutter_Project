import 'package:flutter/material.dart';

void main() {
  runApp( LayoutExample());
}

class LayoutExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}