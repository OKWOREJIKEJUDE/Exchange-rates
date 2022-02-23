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
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 5),
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
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text("Select your currency to convert")));
                        },
                        icon: Icon(Icons.arrow_drop_down)),
                    // NB==THERE IS AN OVERFLOW PIXEL ERROW HERE IN LEADING WIDGET THAT MAKES IT NOT TO ALLIGN VERY WELL
                    leading: Container(
                      width: 70,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage:
                                AssetImage("assets/images/ejykeman.png"),
                          ),
                          SizedBox(width: 10),
                          Text("USD"),
                        ],
                      ),
                    ),

                    // leading: CircleAvatar(
                    //   radius: 10,
                    //   backgroundImage:
                    //       AssetImage("assets/images/ejykeman.png"),
                    // ),
                  ),
                ]),
              ),
            ),

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
            Container(
              margin: EdgeInsets.only(right: 5),
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
                      "1.37",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  "Your currency will be converted here")));
                        },
                        icon: Icon(Icons.arrow_drop_down)),
                    // leading: CircleAvatar(
                    //   radius: 10,
                    //   backgroundImage: AssetImage("assets/images/ejykeman.png"),
                    // ),
                    leading: Container(
                      // NB==THERE IS AN OVERFLOW PIXEL ERROW HERE IN LEADING WIDGET THAT MAKES IT NOT TO ALLIGN VERY WELL
                      width: 70,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage:
                                AssetImage("assets/images/ejykeman.png"),
                          ),
                          SizedBox(width: 10),
                          Text("NGR"),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),

            // Container(
            //   margin: EdgeInsets.only(right: 5),
            //   height: 50.0,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15.0),
            //     color: Color(0xFFc4c4c4).withOpacity(0.5),
            //   ),
            //   child: Row(
            //     mainAxisAlignment:
            //         MainAxisAlignment.spaceEvenly, //SPACED EVENLY HERE//
            //     children: [
            //       //THIS IS WHERE THE CONTAINER THAT WRAPS THE FIRST DROPDOWN STARTED///
            //       InkWell(
            //         onTap: () {
            //           ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(content: Text("Choose your currency")));
            //         },
            //         child: Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(5.0),
            //             color: Color(0xFFc4c4c4).withOpacity(0.5),
            //           ),
            //           child: Row(
            //             //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               CircleAvatar(
            //                 radius: 10,
            //                 backgroundImage:
            //                     AssetImage("assets/images/ejykeman.png"),
            //               ),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               Text("USD",
            //                   style: TextStyle(
            //                     fontSize: 10,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.black,
            //                   )),
            //               Padding(
            //                 padding:
            //                     const EdgeInsets.only(bottom: 30, right: 30),
            //                 child: Container(
            //                   height: 1,
            //                   width: 1,
            //                   child: IconButton(
            //                       onPressed: () {},
            //                       icon: Icon(
            //                         Icons.arrow_drop_down,
            //                         size: 20,
            //                       )),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 5,
            //       ),

            //       Text(
            //         ('$displayNumber'),
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 15,
            //             fontWeight: FontWeight.bold),
            //       ),

            //       SizedBox(
            //         width: 30,
            //       ),

            //       IconButton(
            //           onPressed: () {
            //             setState(() {
            //               displayNumber = myController.text;
            //             });
            //           },
            //           icon: Icon(Icons.arrow_forward)),
            //       SizedBox(
            //         width: 30,
            //       ),
            //       //THIS IS WHERE THE CONTAINER THAT WRAPS THE SECOND DROPDOWN STARTED///
            //       InkWell(
            //         onTap: () {
            //           ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(content: Text("Choose your currency")));
            //         },
            //         child: Container(
            //           // height: 10,
            //           // width: 10,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(5.0),
            //             color: Color(0xFFc4c4c4).withOpacity(0.5),
            //           ),
            //           child: Row(
            //             //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               CircleAvatar(
            //                 radius: 10,
            //                 backgroundImage:
            //                     AssetImage("assets/images/ejykeman.png"),
            //               ),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               Text("NGR",
            //                   style: TextStyle(
            //                     fontSize: 10,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.black,
            //                   )),
            //               Padding(
            //                 padding:
            //                     const EdgeInsets.only(bottom: 30, right: 30),
            //                 child: Container(
            //                   height: 1,
            //                   width: 1,
            //                   child: IconButton(
            //                       onPressed: () {},
            //                       icon: Icon(
            //                         Icons.arrow_drop_down,
            //                         size: 20,
            //                       )),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),

            //       Text(
            //         "1.37",
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 15,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ],
            //   ),
            // ),
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

            // THIS IS WHERE MY GRIDVIEW ITEMS IS SHOWING IN THREE PER ROW//
            // Container(
            //   //height: double.minPositive,
            //   width: double.infinity,
            //   child: MyGridView(),
            // ),
            // Container(
            //   height: 300,
            //   width: double.infinity,
            //   child: MyGridView(),

            //   // _myGrid();
            // ),
            // Stack(
            //   children: <Widget>[
            //     Container(
            //       alignment: Alignment.bottomCenter,
            //       height: 35.0,
            //       width: 120,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(15.0),
            //         color: Color(0xFFc4c4c4).withOpacity(0.5),
            //       ),
            //       child: Center(
            //           child: Text(
            //         "view more currencies",
            //         style: TextStyle(color: Colors.black, fontSize: 10),
            //       )),
            //     ),
            //   ],
            // ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.red,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: FloatingActionButton(
                        child: Icon(Icons.add), onPressed: () {}),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

void _myGrid() {
  MyGridView();
}
