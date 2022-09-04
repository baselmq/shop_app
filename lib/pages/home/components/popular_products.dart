import 'package:e_commerce/pages/home/components/popular_products_card.dart';
import 'package:e_commerce/pages/home/components/section_title_card.dart';
import 'package:e_commerce/pages/home/controllers/c_popular_products.dart';
import 'package:e_commerce/pages/home/models/m_popular_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<ModelPopularProducts> data = ControllerPopularProducts.dataModel;
    int length = ControllerPopularProducts.dataLength;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SectionTitleCard(title: 'Popular Products', onPress: () {}),
        ),
        SizedBox(height: 18.h),
        SizedBox(
          height: 200.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ControllerPopularProducts.dataLength,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SizedBox(width: 20.w),
                  Padding(
                    padding: index == length - 1
                        ? EdgeInsets.only(right: 20.w)
                        : const EdgeInsets.only(right: 0),
                    child: PopularProductsCard(
                      product: data[index],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
