// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RecipeListScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mes Recettes"),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(Icons.fastfood),
              title: Text('Burger maison')),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text('Pizza maison'),
          )
        ],
      ),
    );
  }
}
