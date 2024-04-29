import 'package:flutter/material.dart';

void main() {
  runApp(const MyDropDown());
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String selected = "Dart";

  final List<String> dropDownList = const [
    "Dart",
    "Kotlin",
    "Java",
    "Javascript",
    "PHP",
    "Python",
    "Ruby",
    "Swift",
  ];

  get textController => null;
  bool isOn = false;
  String sex = "pria";
  bool isChecked = false;
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Form - DataPicker"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Bahasa favorit: "),
                  const SizedBox(width: 8),
                  DropdownButton(
                    value: selected,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    style: TextStyle(color: Colors.blue[600]),
                    underline: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    items: dropDownList.map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        if (val != null) selected = val;
                        print(selected);
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  const Text("Connect Instagram"),
                  Switch(
                    value: isOn,
                    onChanged: (bool? val) {
                      if (val != null) {
                        setState(() {
                          isOn = val;
                          print("Switch: $isOn");
                        });
                      }
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  const Text("Jenis Kelamin: "),
                  const SizedBox(width: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: 'pria',
                        groupValue: sex,
                        onChanged: (value) {
                          setState(() {
                            if (value != null) {
                              sex = value;
                              print("sex: $sex");
                            }
                          });
                        },
                      ),
                      const Text("Pria"),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: "wanita",
                        groupValue: sex,
                        onChanged: (value) {
                          setState(() {
                            if (value != null) {
                              sex = value;
                              print("sex: $sex");
                            }
                          });
                        },
                      ),
                      const Text("Wanita"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          isChecked = value;
                          print("setuju: $isChecked");
                        }
                      });
                    },
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "Setuju syarat dan ketentuan.",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
              InkWell(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2100),
                  );
                  setState(() {
                    if (pickedDate != null) {
                      dateController.text = pickedDate.toString();
                    }
                  });
                  debugPrint("Date Picker: $pickedDate");
                },
                child: TextFormField(
                  initialValue: "2023-12-11",
                  maxLength: 20,
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: "Tanggal Lahir",
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    suffixIcon: Icon(Icons.date_range),
                    helperText: "Pilih tanggal lahir anda",
                  ),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
