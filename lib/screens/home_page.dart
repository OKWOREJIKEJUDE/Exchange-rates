// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:exchange_rate/screens/settings.dart';
import 'package:exchange_rate/services/api_services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //Todo: Retrieving the image passed as an argument fron the previous class into this constructor below
  const HomePage({Key? key, this.myListDataFromGridview}) : super(key: key);

  //Todo: we retrieved the image with this variable beloww.
  final String? myListDataFromGridview;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String displayNumber = "";
  TextEditingController myController = TextEditingController();
  String dropdownValue1 = "AUD";
  String dropdownValue2 = "AUD";
  List<String> spinnerItems = ['AUD', 'NGR', 'USD', 'EUR', 'YPD', 'CMR', 'UDP'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    image: DecorationImage(
                        image: AssetImage(
                          widget.myListDataFromGridview ??
                              "assets/images/img11.jpeg",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),

                //todo/ Put it here///
                Container(
                  height: 280,
                  padding: EdgeInsets.only(top: 25),
                  margin: EdgeInsets.only(top: 150, left: 30, right: 30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xffc4c4c4).withOpacity(0.9),
                    //color: Color(0xff00ffff).withOpacity(0.7),
                    //color: Color(0xffffc0cb).withOpacity(0.9),
                    //color: Color(0xff800080).withOpacity(0.7),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            padding: EdgeInsets.only(left: 30),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MySettings()));
                            },
                            icon: Icon(Icons.settings),
                            color: Colors.black,
                          ),
                          Container(
                            height: 50.0,
                            width: 160,
                            margin: EdgeInsets.only(right: 15, left: 15),
                            padding: EdgeInsets.only(left: 15, right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xFFffffff),
                            ),
                            child: TextFormField(
                              controller: myController,
                              decoration: InputDecoration(
                                focusColor: Color(0xff000000),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: "Enter amount",
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.only(right: 30),
                            onPressed: () {
                              myBottomSheet();
                            },
                            icon: Icon(Icons.add),
                            color: Colors.black,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 20),
                        //padding: EdgeInsets.only(left: 5),
                        height: 58.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFfffffff),
                        ),
                        child: Column(children: [
                          ListTile(
                            title: Text(
                              ('$displayNumber'),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            leading: CircleAvatar(
                              radius: 22,
                              backgroundImage:
                                  AssetImage("assets/images/ejykeman.png"),
                            ),
                            //todo:////////////////FIRST SPINNER DROPDOWN//////////////////////////////////////////////////////
                            trailing: _builddropdownbutton(dropdownValue1),
                          ),
                        ]),
                      ),
                      //todo:////////////////ICON BUTTON///////////////////////////////////////////////////////////////////////////
                      IconButton(
                          onPressed: () {
                            setState(() {
                              displayNumber = myController.text;
                            });
                          },
                          color: Colors.black,
                          icon: Icon(Icons.arrow_downward)),

                      //todo:////////////////SECOND SPINNER DROPDOWN//////////////////////////////////////////////////////
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 20),
                        // padding: EdgeInsets.only(left: 5),
                        height: 58.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFFffffff),
                        ),
                        child: Column(children: [
                          ListTile(
                              title: Text(
                                (" "),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              leading: CircleAvatar(
                                radius: 22,
                                backgroundImage:
                                    AssetImage("assets/images/ejykeman.png"),
                              ),
                              trailing: _builddropdownbutton(dropdownValue2)

                              // NB==THERE IS AN OVERFLOW PIXEL ERROW HERE IN LEADING WIDGET THAT MAKES IT NOT TO ALLIGN VERY WELL
                              ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Currencies",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(width: double.infinity, height: 310),
          ],
        )),
      ),
    );
  }

  Widget _builddropdownbutton(String currencyCategory) {
    return DropdownButton<String>(
      value: currencyCategory,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      underline: Container(
        height: 0,
      ),
      //elevation: 16,
      style: TextStyle(color: Colors.black, fontSize: 15),
      onChanged: (String? datass) {
        if (dropdownValue1 == currencyCategory) {
          setState(() {
            dropdownValue1 = datass!;
          });
        } else {
          setState(() {
            dropdownValue2 = datass!;
          });
        }
      },
      items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  void myBottomSheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) => Container(
        //margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "View More Currencies",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              color: Color(0xffc4c4c4).withOpacity(0.5),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 0),
              padding: EdgeInsets.only(left: 0),
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xFFc4c4c4).withOpacity(0.5),
              ),
              child: ListTile(
                title: TextFormField(
                  controller: myController,
                  decoration: InputDecoration(
                    focusColor: Color(0xffffffff),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search Currency by Abbreviation",
                  ),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.search),
                trailing: SwitchScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;
    return Switch(
      onChanged: isChecked,
      value: isSwitched,
      activeColor: Colors.white,
      activeTrackColor: Colors.blue,
      inactiveThumbColor: Colors.redAccent,
      inactiveTrackColor: Colors.orange,
    );
  }
}

void isChecked(bool value) {}
