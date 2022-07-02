// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, camel_case_types

import 'package:challenge/login.dart';
import 'package:flutter/material.dart';

class challenge extends StatefulWidget {
  const challenge({Key? key}) : super(key: key);

  @override
  State<challenge> createState() => _challengeState();
}

class _challengeState extends State<challenge> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Text(
                "TRAINING",
                style: TextStyle(
                    fontSize: 60,
                    color: Color.fromARGB(255, 2, 47, 84),
                    fontWeight: FontWeight.bold),
              ),
              Image(
                image: NetworkImage(
                    "https://i.pinimg.com/736x/f1/37/dd/f137dd3d28eedc843b8ebb0c53fd61fd.jpg"),
                height: 350,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return login();
                  }));
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 3, 46, 81))),
              )
            ],
          ),
        ),
      )),
    );
  }
}
