import 'package:flutter/cupertino.dart'
    show
        AspectRatio,
        BuildContext,
        Container,
        StatelessWidget,
        Text,
        Widget,
        runApp;
import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Colors,
        MaterialApp,
        Scaffold,
        StatelessWidget,
        Text,
        ThemeData,
        Widget,
        runApp;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Aspect Ratio"),
        ),
        body: AspectRatio(
          aspectRatio: 180 / 240,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
