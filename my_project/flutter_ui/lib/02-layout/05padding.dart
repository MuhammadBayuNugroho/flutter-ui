import 'package:flutter/cupertino.dart';
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
          title: const Text("Belajar Padding"),
        ),
        body: Container(
          height: 500,
          width: 300,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 30,
                  bottom: 40,
                ),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
