import 'package:e_commerce/pages/details/body.dart';
import 'package:e_commerce/pages/home/models/m_popular_products.dart';
import 'package:e_commerce/util/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularProductsCard extends StatelessWidget {
  const PopularProductsCard({Key? key, required this.product})
      : super(key: key);
  final ModelPopularProducts product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BodyDetailsPage.id,
            arguments: ProductDetailsArguments(product: product));
      },
      child: SizedBox(
        width: 130.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 115.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: const Color(0xfff4f4f4),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Hero(
                  tag: product.id.toString(),
                  child: Image.asset(product.images[0]),
                ),
              ),
            ),
            SizedBox(height: 9.h),
            SizedBox(
              height: 37.h,
              child: Text(
                product.title,
                style: TextStyle(fontFamily: 'Muli', fontSize: 14.sp),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    fontFamily: 'Muli',
                    fontSize: 17.sp,
                    color: Colors.deepOrangeAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50.r),
                  onTap: () {},
                  child: Container(
                    height: 28,
                    width: 28,
                    padding: EdgeInsets.all(7.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: product.isFavorite
                          ? const Color(0xFFFF7643).withOpacity(0.15)
                          : const Color(0xFF979797).withOpacity(0.1),
                    ),
                    child: SvgPicture.asset(
                      PathIcons.heartIcon2,
                      color: product.isFavorite
                          ? const Color(0xFFFF4848)
                          : const Color(0xFFDBDEE4),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}




// import 'package:e_commerce/util/path_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class PopularProductsCard extends StatelessWidget {
//   const PopularProductsCard(
//       {Key? key,
//       required this.title,
//       required this.image,
//       required this.price,
//       required this.isFavorite,
//       this.onPress})
//       : super(key: key);
//   final String title;
//   final String image;
//   final double price;
//   final bool isFavorite;
//   final Function()? onPress;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPress,
//       child: SizedBox(
//         width: 130.w,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 115.h,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15.r),
//                 color: const Color(0xfff4f4f4),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(15.w),
//                 child: Image.asset(image),
//               ),
//             ),
//             SizedBox(height: 9.h),
//             SizedBox(
//               height: 37.h,
//               child: Text(
//                 title,
//                 style: TextStyle(fontFamily: 'Muli', fontSize: 14.sp),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   '\$$price',
//                   style: TextStyle(
//                     fontFamily: 'Muli',
//                     fontSize: 17.sp,
//                     color: Colors.deepOrangeAccent,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 Container(
//                   height: 28,
//                   width: 28,
//                   padding: EdgeInsets.all(7.w),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: isFavorite
//                         ? const Color(0xFFFF7643).withOpacity(0.15)
//                         : const Color(0xFF979797).withOpacity(0.1),
//                   ),
//                   child: SvgPicture.asset(
//                     PathIcons.heartIcon2,
//                     color: isFavorite
//                         ? const Color(0xFFFF4848)
//                         : const Color(0xFFDBDEE4),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
