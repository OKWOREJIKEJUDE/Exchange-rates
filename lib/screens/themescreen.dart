// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:exchange_rate/screens/home_page.dart';
import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list_images1 = [
      "assets/images/img1.jpeg",
      "assets/images/img2.jpeg",
      "assets/images/img4.jpeg",
      "assets/images/img5.jpeg",
      "assets/images/img6.jpeg",
      "assets/images/img7.jpeg",
      "assets/images/img8.jpeg",
      "assets/images/img9.jpeg",
      "assets/images/img10.jpeg",
      "assets/images/img11.jpeg",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Color(0xffc4c4c4),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: GridView.builder(
          itemCount: list_images1.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (ejykescontext, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(
                            myListDataFromGridview: list_images1[
                                index]))); //Todo:  Passing Image as an argument
              },
              child: Card(
                margin: EdgeInsets.all(5),
                elevation: 20,
                child: Image.asset(
                  list_images1[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
