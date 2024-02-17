import 'dart:async';

import 'package:favorite_books/config/config.dart';
import 'package:favorite_books/repositories/favorites/models/favorite_book_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoriteRepository {
  late Box<FavoriteBook> _hive;
  late List<FavoriteBook> _box;
  FavoriteRepository();

  Future<List<FavoriteBook>> getFavorites() async {
    _hive = Hive.box<FavoriteBook>(Config.favoritesBox);
    _box = _hive.values.toList();
    return _box;
  }

  Future<List<FavoriteBook>> addFavorite(FavoriteBook todo) async {
    _hive.add(todo);
    return _hive.values.toList();
  }

  Future<List<FavoriteBook>> removeFavorite(String id) async {
    _hive.deleteAt(_hive.values.toList().indexWhere((element) => element.id == id));
    return _hive.values.toList();
  }

  Future<bool> isFav(String id) async {
    var exist = false;
    final list = await getFavorites();
    final existItem = list.where((element) => element.id == id);
    if (existItem.isNotEmpty) {
      exist = true;
    }
    return exist;
  }
}
