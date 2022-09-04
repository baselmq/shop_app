import 'package:e_commerce/pages/home/models/m_popular_products.dart';
import 'package:e_commerce/util/path_images.dart';
import 'package:flutter/material.dart';

class ControllerPopularProducts with ChangeNotifier {
  static final List<ModelPopularProducts> _dataModel = [
    ModelPopularProducts(
        id: 1,
        title: 'Wireless Controller for PS4™',
        description:
            'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
        price: 64.99,
        rating: 4.8,
        isFavorite: true,
        images: [
          PathImages.ps4ConsoleWhite1,
          PathImages.ps4ConsoleWhite2,
          PathImages.ps4ConsoleWhite3,
          PathImages.ps4ConsoleWhite4,
          // PathImages.ps4ConsoleBlue1,
          // PathImages.ps4ConsoleBlue2,
          // PathImages.ps4ConsoleBlue3,
          // PathImages.ps4ConsoleBlue4,
        ],
        colors: [
          const Color(0xFFF6625E),
          const Color(0xFF836DB8),
          const Color(0xFFDECB9C),
          Colors.white,
        ],
        listImages: [
          [
            PathImages.ps4ConsoleWhite1,
            PathImages.ps4ConsoleWhite2,
            PathImages.ps4ConsoleWhite3,
            PathImages.ps4ConsoleWhite4,
          ],
          [
            PathImages.ps4ConsoleBlue1,
            PathImages.ps4ConsoleBlue2,
            PathImages.ps4ConsoleBlue3,
            PathImages.ps4ConsoleBlue4,
          ],
          [
            PathImages.ps4ConsoleWhite1,
            PathImages.ps4ConsoleWhite2,
            PathImages.ps4ConsoleWhite3,
            PathImages.ps4ConsoleWhite4,
          ],
          [
            PathImages.ps4ConsoleWhite1,
            PathImages.ps4ConsoleWhite2,
            PathImages.ps4ConsoleWhite3,
            PathImages.ps4ConsoleWhite4,
          ],
        ]),
    ModelPopularProducts(
        id: 2,
        title: 'Nike Sport White - Man Pant™',
        description:
            'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
        price: 50.5,
        rating: 4.1,
        isFavorite: false,
        images: [
          PathImages.imagePopularProduct2,
        ],
        colors: [
          const Color(0xFFF6625E),
          const Color(0xFF836DB8),
          const Color(0xFFDECB9C),
          Colors.white,
        ],
        listImages: [
          [
            PathImages.imagePopularProduct2,
          ],
          [
            PathImages.imagePopularProduct2,
          ],
          [
            PathImages.imagePopularProduct2,
          ],
          [
            PathImages.imagePopularProduct2,
          ],
        ]),
    ModelPopularProducts(
        id: 3,
        title: 'Gloves',
        description:
            'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
        price: 36.00,
        rating: 3.9,
        isFavorite: true,
        images: [
          PathImages.gloves,
        ],
        colors: [
          const Color(0xFFF6625E),
          const Color(0xFF836DB8),
          const Color(0xFFDECB9C),
          Colors.white,
        ],
        listImages: [
          [
            PathImages.imagePopularProduct2,
          ],
          [
            PathImages.imagePopularProduct2,
          ],
          [
            PathImages.imagePopularProduct2,
          ],
          [
            PathImages.imagePopularProduct2,
          ],
        ]),
  ];
  static List<ModelPopularProducts> get dataModel => _dataModel;
  static int get dataLength => _dataModel.length;
  changeImage() {
    notifyListeners();
  }
}
