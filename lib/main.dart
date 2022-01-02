// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget titleSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Pizza facile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text("Par jaures",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                  ))
            ],
          )),
          Icon(Icons.favorite, color: Colors.red),
          Text("55")
        ],
      ));

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Mes recettes"),
          ),
          body: Column(children: [
            titleSection,
            Row(children: [
              _buildButtonColumn(Colors.blue, Icons.comment, "COMMENTAIRE"),
              _buildButtonColumn(Colors.blue, Icons.share, "PARTAGER")
            ])
          ])),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: Icon(icon, color: color),
      ),
      Text(label,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ))
    ],
  );
}
