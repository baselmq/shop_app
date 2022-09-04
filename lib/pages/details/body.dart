import 'package:e_commerce/pages/details/components/app_bar_products.dart';
import 'package:e_commerce/pages/details/components/details_products.dart';
import 'package:e_commerce/pages/home/models/m_popular_products.dart';
import 'package:flutter/material.dart';

class BodyDetailsPage extends StatelessWidget {
  const BodyDetailsPage({Key? key}) : super(key: key);
  static const String id = 'DetailsPage';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments argument =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // backgroundColor: Color(0xfff5f6f9),
      appBar: AppBarProducts(rating: argument.product.rating),
      body: DetailsProducts(products: argument.product),
    );
  }
}

class ProductDetailsArguments {
  final ModelPopularProducts product;

  ProductDetailsArguments({required this.product});
}
