import 'package:demo_app_flutter/favoriteWidget.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
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
        "jaures beinjamin bbdsfsdfsdfsdf",
        softWrap: true,
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("Mes recettes"),
        ),
        body: ListView(children: [
          /*Image.asset(
            'images/pizza.png',
            width: 400,
            height: 240,
            fit: BoxFit.cover,
          ),*/
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
