import 'package:e_commerce/pages/home/components/category_card.dart';
import 'package:e_commerce/pages/home/controllers/c_categories.dart';
import 'package:e_commerce/pages/home/models/m_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ModelCategories> data = ControllerCategories.dataModel;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
          height: 87.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(ControllerCategories.dataLength, (index) {
              ModelCategories snapShot = data[index];
              return CategoryCard(
                  icon: snapShot.icon,
                  text: snapShot.text,
                  onPress: snapShot.onPress);
            }),
          )),
    );
  }
}
// SizedBox(
//       height: 87.h,
//       child: ListView.builder(
//         itemExtent: 80,
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         itemCount: ControllerCategories.dataLength,
//         itemBuilder: (context, index) {
//           ModelCategories snapShot = data[index];
//           return CardCategory(
//             icon: snapShot.icon,
//             text: snapShot.text,
//             onPress: () {},
//           );
//         },
//       ),
//     );