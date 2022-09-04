import 'package:e_commerce/components/button_custom.dart';
import 'package:e_commerce/pages/details/components/color_dots.dart';
import 'package:e_commerce/pages/details/components/description_product.dart';
import 'package:e_commerce/pages/details/components/image_product.dart';
import 'package:e_commerce/pages/details/components/rounded_container.dart';
import 'package:e_commerce/pages/home/models/m_popular_products.dart';
import 'package:e_commerce/provider/provider_image_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DetailsProducts extends StatelessWidget {
  const DetailsProducts({Key? key, required this.products}) : super(key: key);
  final ModelPopularProducts products;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProviderImageColor(),
      child: ListView(
        children: [
          ImagesProduct(products: products),
          RoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                DescriptionProduct(product: products),
                RoundedContainer(
                  color: Colors.grey[200]!,
                  child: Column(
                    children: [
                      ColorDots(products: products),
                      RoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 45.w, right: 45.w, top: 20.h, bottom: 40.h),
                          child: ElevatedButtonCustom(
                            text: 'Add To Cart',
                            width: double.infinity,
                            height: 45,
                            onClick: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class SelectImageProduct extends StatelessWidget {
//   const SelectImageProduct(
//       {Key? key,
//       required this.products,
//       required this.index,
//       required this.onPress})
//       : super(key: key);
//   final ModelPopularProducts products;
//   final Function() onPress;
//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPress,
//       child: Container(
//         width: 50.w,
//         height: 44.h,
//         margin: EdgeInsets.only(right: 15.w),
//         padding: EdgeInsets.all(7.w),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10.r),
//           border: Border.all(
//             color: Colors.deepOrangeAccent,
//           ),
//         ),
//         child: Image.asset(products.images[index]),
//       ),
//     );
//   }
// }
