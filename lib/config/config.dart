import 'package:flutter/material.dart';

class Config {
  static const applicationTitle = 'Favorite Books';
  static const apiUrl = 'https://www.googleapis.com/books/v1/';
  static const apiKey = 'AIzaSyBdKJDH2gnosakWMKP7855jO2RCVeGf7Xc';
  static const supportedLocales = <Locale>[
    Locale('tr'),
    Locale('en'),
  ];
  // Hive box names
  static const favoritesBox = 'favoriteBox';
}
