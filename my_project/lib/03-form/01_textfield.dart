import 'package:flutter/material.dart';

void main() {
  runApp(const MyTextField());
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Form - Text Field"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            maxLength: 20,
            controller: textController,
            decoration: const InputDecoration(
              labelText: "Nama",
              labelStyle: TextStyle(color: Colors.blueGrey),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey),
              ),
              helperText: "Masukkan nama",
            ),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
