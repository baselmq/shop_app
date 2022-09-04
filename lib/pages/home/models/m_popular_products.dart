import 'package:flutter/material.dart';

class ModelPopularProducts {
  int id;
  String title;
  String description;
  double price;
  double rating;
  bool isFavorite;
  final List<String> images;
  final List<Color> colors;
  final List<List> listImages;
  ModelPopularProducts({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.isFavorite,
    required this.images,
    required this.colors,
    required this.listImages,
  });
}
