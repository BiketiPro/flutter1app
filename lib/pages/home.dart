import 'package:flutter/material.dart';

import 'addemployee.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context)=>AddEmployee()));
          },
        child: Icon(
          Icons.add, color: Colors.white,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Employee ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text("Attendance", style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                ),
                )
              ],),
          ],
        ),
      ),
    );
  }
}
