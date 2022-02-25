// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:exchange_rate/screens/my_grid.dart';
import 'package:exchange_rate/services/api_services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.only(
          top: 55,
          left: 25,
          right: 15,
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/ejykeman.png"),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 5),
              padding: EdgeInsets.only(left: 20),
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xFFc4c4c4).withOpacity(0.5),
              ),
              child: TextFormField(
                controller: myController,
                decoration: InputDecoration(
                  focusColor: Color(0xffffffff),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "Enter amount to convert",
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 5),
              padding: EdgeInsets.only(left: 5),
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xFFc4c4c4).withOpacity(0.5),
              ),
              child: SingleChildScrollView(
                //SINGLECHILDSCROWVIEW ENABLES THE COLUMN NOT TO OVERFLOW IN PIXEL//
                child: Column(children: [
                  ListTile(
                      title: Text(
                        ('$displayNumber'),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      //todo:////////////////FIRST SPINNER DROPDOWN//////////////////////////////////////////////////////
                      trailing: _builddropdownbutton(dropdownValue1)
                      // DropdownButton<String>(
                      //   value: dropdownValue1,
                      //   icon: Icon(Icons.arrow_drop_down),
                      //   iconSize: 24,
                      //   underline: Container(
                      //     height: 0,
                      //   ),
                      //   //elevation: 16,
                      //   style: TextStyle(color: Colors.black, fontSize: 15),
                      //   onChanged: (String? datass) {
                      //     // setState(() {
                      //     //   dropdownValue1 = datass!;
                      //     // });
                      //     if (dropdownValue1 == dropdownValue11) {
                      //       _onFromChanged(datass);
                      //     } else {
                      //       _onToChanged(datass);
                      //     }
                      //   },
                      //   items: spinnerItems
                      //       .map<DropdownMenuItem<String>>((String value) {
                      //     return DropdownMenuItem<String>(
                      //       value: value,
                      //       child: Text(value),
                      //     );
                      //   }).toList(),
                      // ),

                      ),
                ]),
              ),
            ),
            //todo:////////////////ICON BUTTON///////////////////////////////////////////////////////////////////////////
            IconButton(
                onPressed: () {
                  setState(() {
                    displayNumber = myController.text;
                  });
                },
                icon: Icon(Icons.arrow_forward)),
            SizedBox(
              width: 20,
            ),
            //todo:////////////////SECOND SPINNER DROPDOWN//////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.only(right: 5),
              padding: EdgeInsets.only(left: 5),
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xFFc4c4c4).withOpacity(0.5),
              ),
              child: SingleChildScrollView(
                //SINGLECHILDSCROWVIEW ENABLES THE COLUMN NOT TO OVERFLOW IN PIXEL//
                child: Column(children: [
                  ListTile(
                      title: Text(
                        (" "),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: _builddropdownbutton(dropdownValue2)
                      // DropdownButton<String>(
                      //   value: dropdownValue1,
                      //   icon: Icon(Icons.arrow_drop_down),
                      //   iconSize: 24,
                      //   underline: Container(
                      //     height: 0,
                      //   ),
                      //   //elevation: 16,
                      //   style: TextStyle(color: Colors.black, fontSize: 15),
                      //   onChanged: (String? data) {
                      //     setState(() {
                      //       dropdownValue1 = data!;
                      //     });
                      //   },
                      //   items: spinnerItems
                      //       .map<DropdownMenuItem<String>>((String value) {
                      //     return DropdownMenuItem<String>(
                      //       value: value,
                      //       child: Text(value),
                      //     );
                      //   }).toList(),
                      // ),

                      // NB==THERE IS AN OVERFLOW PIXEL ERROW HERE IN LEADING WIDGET THAT MAKES IT NOT TO ALLIGN VERY WELL
                      ),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Currencies",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xff0000FF).withOpacity(0.5),
                ),
                child: Center(child: Text("View more currencies")),
              ),
            ),
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
}
