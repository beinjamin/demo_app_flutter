// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_app_flutter/recipe.dart';
import 'package:flutter/material.dart';

class RecipeListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipeListScreenState();
  }
}

class RecipeListScreenState extends State<RecipeListScreen> {
  final List<Recipe> recipes = [
    Recipe(
        "pizza facile",
        "Par Jojo premier",
        "https://assets.afcdn.com/recipe/20160519/15342_w600.jpg",
        "faire cui la bannane",
        false,
        50),
    Recipe(
        "Burger Restaurant",
        "Par Jojo premier",
        "https://assets.afcdn.com/recipe/20160519/15342_w600.jpg",
        "faire cui la bannane",
        false,
        50),
    Recipe(
        "pizza facile",
        "Par Jojo premier",
        "https://assets.afcdn.com/recipe/20160519/15342_w600.jpg",
        "faire cui la bannane",
        false,
        50),
    Recipe(
        "pizza facile",
        "Par Jojo premier",
        "https://assets.afcdn.com/recipe/20160519/15342_w600.jpg",
        "faire cui la bannane",
        false,
        50),
    Recipe(
        "pizza facile",
        "Par Jojo premier",
        "https://assets.afcdn.com/recipe/20160519/15342_w600.jpg",
        "faire cui la bannane",
        false,
        50),
    Recipe(
        "pizza facile",
        "Par gilbert",
        "https://assets.afcdn.com/recipe/20160519/15342_w600.jpg",
        "faire cui la bannane",
        false,
        50),
    Recipe(
        "pizza facile",
        "Par hugo",
        "https://assets.afcdn.com/recipe/20160519/15342_w600.jpg",
        "faire cui la bannane",
        false,
        50),
    Recipe(
        "pizza facile",
        "Par pascal",
        "https://assets.afcdn.com/recipe/20160519/15342_w600.jpg",
        "faire cui la bannane",
        true,
        50)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mes Recettes"),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Dismissible(
              key: key, child: RecipeItemWidget(recipe: recipes[index]));
        },
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
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 8,
      child: Row(children: [
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Text(recipe.user,
                  style: TextStyle(color: Colors.grey[500], fontSize: 16))
            ],
          ),
        )
      ]),
    );
  }
}
