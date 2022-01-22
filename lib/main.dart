// ignore_for_file: prefer_const_constructors

import 'package:demo_app_flutter/recipe.dart';
import 'package:demo_app_flutter/recipeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: RecipeScreen(
          recipe: Recipe(
        "Nourriture",
        "Par jaures",
        "https://assets.afcdn.com/recipe/20160519/15342_w600.jpg",
        "jasfadfasdasdasdasdasdasdasd",
        false,
        50,
      )),
    );
  }
}
