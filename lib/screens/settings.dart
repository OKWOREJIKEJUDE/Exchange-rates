// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:exchange_rate/screens/themescreen.dart';
import 'package:flutter/material.dart';

class MySettings extends StatelessWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Color(0xffc4c4c4),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThemeScreen()));
                },
                child: Container(
                  height: 80,
                  child: Row(
                    children: [
                      Text("Theme",
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Color(0xffc4c4c4).withOpacity(0.5),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  child: Row(
                    children: [
                      Text("Feedback",
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Color(0xffc4c4c4).withOpacity(0.5),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  child: Row(
                    children: [
                      Text("Share",
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Color(0xffc4c4c4).withOpacity(0.5),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  child: Row(
                    children: [
                      Text("Version",
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Color(0xffc4c4c4).withOpacity(0.5),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  child: Row(
                    children: [
                      Text("About",
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Color(0xffc4c4c4).withOpacity(0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
