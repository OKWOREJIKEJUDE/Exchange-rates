// ignore_for_file: prefer_const_constructors
import 'package:exchange_rate/services/api_services.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          //Note: If your are returning something in the future(From ApiServices), that data is stored in the snapshot below. then, we keep using the snapshot to represent the datas from future(ApiServises class)
          future: ApiService().getAllPostss(),
          builder: (context, AsyncSnapshot mySnapshot) {
            if (mySnapshot.hasData) {
              return Center(
                  child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: mySnapshot.data.length,
                itemBuilder: (context, index) {
                  return Image.network(mySnapshot.data[index]['image']);
                },
              ));
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
