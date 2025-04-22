import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Gabungan',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Utama')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                );
              },
              child: const Text('Halaman Search Mata Kuliah'),
            ),
            const SizedBox(height: 16), // Menambahkan space vertikal 16 piksel
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NestedScrollExample()),
                );
              },
              child: const Text('Halaman NestedScrollView'),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> _items = [
    'Pemrograman Sistem Bergerak',
    'Statistik',
    'Kalkulus',
    'Fisika',
    'Agama',
    'Algoritma dan Struktur Data',
    'Jaringan Komputer',
    'Machine Learning',
    'Basis Data',
    'Sistem Operasi'
  ];
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final filteredItems = _items
        .where((item) => item.toLowerCase().contains(_query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search View'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Search...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  _query = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(filteredItems[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NestedScrollExample extends StatelessWidget {
  const NestedScrollExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('NestedScrollView'),
                background: Image.network(
                  'https://image.shutterstock.com/z/stock-photo-communication-network-concept-gui-graphical-user-interface-d-rendering-1894920061.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item ${index + 1}'),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tombol di Item ${index + 1} ditekan!')),
                  );
                },
                child: const Text('Aksi'),
              ),
            );
          },
        ),
      ),
    );
  }
}
