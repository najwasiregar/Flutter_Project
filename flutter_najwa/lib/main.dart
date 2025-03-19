import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = TextEditingController();
  String _text = '';
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App - Najwa Alawiyah'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/cwe_pink.jpg',
                    width: 200,
                  ),
                  const SizedBox(width: 20),
                  Image.network(
                    'https://png.pngtree.com/png-clipart/20230623/original/pngtree-happy-cute-cat-vector-png-image_9205055.png',
                    width: 200,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to My App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 253, 255),
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Color.fromARGB(255, 244, 36, 4),
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _text = _controller.text;
                  });
                },
                child: const Text('Tampilkan Teks'),
              ),
              const SizedBox(height: 20),
              Text(
                _text,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.home, size: 40, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.star, size: 40, color: Colors.yellow),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.favorite, size: 40, color: Colors.red),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.person, size: 40, color: Colors.blue),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 238, 150, 218),
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.settings, size: 40, color: Colors.brown),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isPressed = !_isPressed;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isPressed ? Colors.blue : Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(_isPressed ? 'Tombol Aktif' : 'Tombol Tidak Aktif'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}