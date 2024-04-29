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
        // '/halaman2': (context) => Halaman2(),
        // '/halaman3': (context) => Halaman3(),
        // '/halaman4': (context) => Halaman4(),
      },
    );
  }
}

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Halaman 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Halaman 2'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman2');
              },
            ),
            ListTile(
              title: Text('Halaman 3'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman3');
              },
            ),
            ListTile(
              title: Text('Halaman 4'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman4');
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "UNISNU Jepara",
                style: TextStyle(color: Colors.black),
              ),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.blue[200],
                height: 100,
                child: Center(
                  child: Text(
                    "Item $index",
                    textScaler: const TextScaler.linear(2),
                  ),
                ),
              );
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}
