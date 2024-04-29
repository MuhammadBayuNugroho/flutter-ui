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
        '/halaman2': (context) => Halaman2(),
        '/halaman3': (context) => Halaman3(),
        '/halaman4': (context) => Halaman4(),
      },
    );
  }
}

class Halaman1 extends StatelessWidget {
  const Halaman1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 1'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
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
              title: const Text('Halaman 2'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman2');
              },
            ),
            ListTile(
              title: const Text('Halaman 3'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman3');
              },
            ),
            ListTile(
              title: const Text('Halaman 4'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman4');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Halaman 1'),
      ),
    );
  }
}

class Halaman2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 2'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Halaman 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Halaman 1'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman1');
              },
            ),
            ListTile(
              title: const Text('Halaman 3'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman3');
              },
            ),
            ListTile(
              title: const Text('Halaman 4'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman4');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: const Text('Halaman 2'),
      ),
    );
  }
}

class Halaman3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 3'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Halaman 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Halaman 1'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman1');
              },
            ),
            ListTile(
              title: const Text('Halaman 2'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman2');
              },
            ),
            ListTile(
              title: const Text('Halaman 4'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman4');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: const Text('Halaman 3'),
      ),
    );
  }
}

class Halaman4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 4'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Halaman 4',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Halaman 1'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman1');
              },
            ),
            ListTile(
              title: const Text('Halaman 2'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman2');
              },
            ),
            ListTile(
              title: const Text('Halaman 3'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman3');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: const Text('Halaman 4'),
      ),
    );
  }
}
