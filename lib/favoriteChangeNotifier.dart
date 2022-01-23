import 'package:flutter/material.dart';

class FavoriteChangeNotifier with ChangeNotifier {
  // ignore: prefer_final_fields
  bool _isFavorited;

  final int _favoriteCount;
  FavoriteChangeNotifier(
    this._isFavorited,
    this._favoriteCount,
  );

  bool get isFavorited => _isFavorited;
  int get favoriteCount => _favoriteCount + (_isFavorited ? 1 : 0);

  set isFavorite(bool isFavorited) {
    _isFavorited = isFavorited;
    notifyListeners();
  }
}
