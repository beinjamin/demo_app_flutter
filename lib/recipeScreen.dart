import 'package:flutter/material.dart';

import 'package:demo_app_flutter/favoriteWidget.dart';
import 'package:demo_app_flutter/recipe.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
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
                    "recipe.title",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text("recipe.user",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                    ))
              ],
            )),
            FavoriteWidget()
          ],
        ));
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _buildButtonColumn(Colors.blue, Icons.comment, "COMMENTAIRE"),
        _buildButtonColumn(Colors.blue, Icons.share, "PARTAGER")
      ]),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        "recipe.description",
        softWrap: true,
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("Mes recettes"),
        ),
        body: ListView(children: [
          Stack(
            children: [
              Container(
                width: 600,
                height: 240,
                child: Center(child: CircularProgressIndicator()),
              ),
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://assets.afcdn.com/recipe/20160519/15342_w600.jpg',
                width: 400,
                height: 240,
                fit: BoxFit.cover,
              )
            ],
          ),
          titleSection,
          buttonSection,
          descriptionSection
        ]));
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
