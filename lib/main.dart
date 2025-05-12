import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Row(
          children: [
            Icon(Icons.home, color: Colors.black),
            SizedBox(width: 10),
            Text("Home", style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.black), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green[300],
            padding: EdgeInsets.all(10),
            child: Icon(Icons.camera_alt, color: Colors.white, size: 40),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Flutter World for ",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                  ),
                  TextSpan(
                    text: "Mobile",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                tableCell("Column 1"),
                tableCell("Column 2"),
                tableCell("Column 3"),
              ]),
              TableRow(children: [
                tableCell("Row 1"),
                tableCell("Row 2"),
                tableCell("Row 3"),
              ]),
              TableRow(children: [
                tableCell("Columns and Row Nesting 1"),
                tableCell("Columns and Row Nesting 2"),
                tableCell("Columns and Row Nesting 3"),
              ]),
              TableRow(children: [
                tableCell("Row N0sting 1"),
                tableCell("Row Nesting 2"),
                tableCell("Row Nesting 3"),
              ]),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonWithIcon(Icons.flag, "Flag"),
              SizedBox(width: 10),
              buttonWithIcon(Icons.lock, "Save"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.flight_takeoff, size: 30),
              Icon(Icons.flight, size: 30, color: Colors.green),
              Icon(Icons.car_rental, size: 30),
              Icon(Icons.directions_bus, size: 30),
            ],
          ),
        ],
      ),
    );
  }

  Widget tableCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text(text)),
    );
  }

  Widget buttonWithIcon(IconData icon, String text) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      label: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
