import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/halaman1',
      routes: {
        '/halaman1': (context) => Halaman1(),
      },
    );
  }
}

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tab - Bar'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_boat)),
              Tab(icon: Icon(Icons.directions_bus)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Isi Halaman 1 - Tab 1')),
            Center(child: Text('Isi Halaman 1 - Tab 2')),
            Center(child: Text('Isi Halaman 1 - Tab 3')),
          ],
        ),
      ),
    );
  }
}
