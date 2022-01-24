// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_app_flutter/recipe.dart';
import 'package:flutter/material.dart';

class RecipeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mes Recettes"),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          RecipeItemWidget(
              recipe: Recipe(
                  "pizza facile",
                  "Par Jojo premier",
                  "https://assets.afcdn.com/recipe/20260519/15342_w600.jpg",
                  "faire cui la bannane",
                  false,
                  50)),
          RecipeItemWidget(
              recipe: Recipe(
                  "Burge maison",
                  "Par Cyril Lignac",
                  "https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bonne-image.",
                  "faire cui la bannane",
                  true,
                  50)),
        ],
      ),
    );
  }
}

class RecipeItemWidget extends StatelessWidget {
  const RecipeItemWidget({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CachedNetworkImage(
        imageUrl: recipe.imageUrl,
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
      Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(recipe.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Text(recipe.user,
                style: TextStyle(color: Colors.grey[500], fontSize: 16))
          ],
        ),
      )
    ]);
  }
}
