import 'package:flutter/material.dart';

class FavoriteIconWidget extends StatefulWidget {
  _FavoriteIconWidgetState createState() => _FavoriteIconWidgetState();
}

class _FavoriteIconWidgetState extends State<FavoriteIconWidget> {
  bool _isFavorited;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon:
              _isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: _toggleFavorite,
        ),
      ],
    );
  }
}

class FavoriteTextWidget extends StatefulWidget {
  final bool isFavorited;
  final int favoriteCount;

  const FavoriteTextWidget({
    Key? key,
    required this.isFavorited,
    required this.favoriteCount,
  }) : super(key: key);

  _FavoriteTextWidgetState createState() => _FavoriteTextWidgetState(
        this.isFavorited,
        this.favoriteCount,
      );
}

class _FavoriteTextWidgetState extends State<FavoriteTextWidget> {
  bool _isFavorited;
  int _favoriteCount;
  _FavoriteTextWidgetState(this._isFavorited, this._favoriteCount);

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCount -= 1;
      } else {
        _isFavorited = true;
        _favoriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon:
              _isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: _toggleFavorite,
        ),
        Text('$_favoriteCount')
      ],
    );
  }
}
