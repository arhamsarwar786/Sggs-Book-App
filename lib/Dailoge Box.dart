// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHome(),
//     );
//   }
// }

enum languages { english, urdu, hindko, punjabi, hindi }

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            String title = "Select the suitable language";
            return AlertDialog(
              elevation: 0.0,
              backgroundColor: Colors.white,
              actions: [
                Container(
                  color: Color(0xff00917C),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        // width: size.width,
                        alignment: Alignment.center,
                        height: 40,
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 2,
                        // width: ,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value1 = value!;
                            value2 = false;
                            value3 = false;
                            value4 = false;
                            value5 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value1,
                        title: Text(
                          "ENGLISH",
                          style: TextStyle(
                              fontSize: 16,
                              color: value1 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value2 = value!;
                            value1 = false;
                            value3 = false;
                            value4 = false;
                            value5 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value2,
                        title: Text(
                          "URDU (اردو)",
                          style: TextStyle(
                              fontSize: 16,
                              color: value2 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value3 = value!;
                            value1 = false;
                            value2 = false;
                            value4 = false;
                            value5 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value3,
                        title: Text(
                          "HINDKO (ہندکو)",
                          style: TextStyle(
                              fontSize: 16,
                              color: value3 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value4 = value!;
                            value1 = false;
                            value2 = false;
                            value3 = false;
                            value5 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value4,
                        title: Text(
                          "PUNJABI (ਪੁਨਾਬੀ)",
                          style: TextStyle(
                              fontSize: 16,
                              color: value4 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value5 = value!;
                            value1 = false;
                            value2 = false;
                            value3 = false;
                            value4 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value5,
                        title: Text(
                          "HINDI (हिन्दी)",
                          style: TextStyle(
                              fontSize: 16,
                              color: value5 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              // languageDialoge(context);
              _showDialog();
            },
            child: Text("Click")),
      ),
    );
  }
}
