import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Colors,
        Expanded,
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
          title: const Text("Belajar Grid View"),
        ),
        body: Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  width: double.infinity,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset.zero,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Center(
                      child: Text(
                    (index + 1).toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )),
                );
              }),
        ),
      ),
    );
  }
}
