import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ManageWidget(),
    );
  }
}

class ManageWidget extends StatefulWidget {
  const ManageWidget({super.key});

  @override
  _ManageWidgetState createState() => _ManageWidgetState();
}

class _ManageWidgetState extends State<ManageWidget> {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manage Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Container(
                width: 250,
                height: 100,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(
                  top: 50, // Ubah nilai ini menjadi lebih besar
                  bottom: 20,
                  left: 30,
                  right: 30,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 242, 170, 236),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Box Model',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleVisibility,
              child: const Text('Toggle Visibility'),
            ),
          ],
        ),
     ),
);
}
}