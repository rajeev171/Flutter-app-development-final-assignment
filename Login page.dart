// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  var _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   title: Text(""),
          //   centerTitle: true,
          // ),
          backgroundColor: Colors.white,
          body: Form(
            key: _formkey,
            child: SingleChildScrollView(
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 35, top: 100),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // Image.asset(
                //   "assets/images/login_image.png",
                //   fit: BoxFit.cover,
                // ),

                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(children: [
                    TextFormField(
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please enter Username';
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.login),
                        hintText: "Enter Username",
                        labelText: "Student Name",
                        // labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please enter Email ID';
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Enter Email ID",
                        labelText: "Email ID",
                        // labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(320, 40)),
                      onPressed: () {
                        // Navigator.pushNamed(context, MyRoutes.homeRoute);
                        print("Heloo World");
                      },
                    ),
                  ]),
                )
              ]),
            ),
          )),
    );
  }
}
