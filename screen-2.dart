// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 66, 119)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                    hintText: "Student Name ",
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 30,
                    ),
                    hintText: "Email Id ",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TrainingCompletion extends StatelessWidget {
  String? Name;
  DateTime todayDate = DateTime.now();
  TrainingCompletion({Key? key, this.Name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              "Status Bar",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 20,
            ),
            SizedBox(
              height: 15,
            ),
            Text("Hi, ${Name}",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Image(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/e5/73/7c/e5737c44dd061635766ba1e3a4b4efb9.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You have successfully completed Hybrid Mobile App Development Course.",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "INSTRUCTOR NAME",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Pankaj Kapoor",
                style: TextStyle(color: Colors.black54, fontSize: 20)),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    "Date:${todayDate.day}-${todayDate.month}-${todayDate.year}",
                    style: TextStyle(fontSize: 20))
              ],
            )
          ],
        ),
      )),
    );
  }
}
