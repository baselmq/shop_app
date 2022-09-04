import 'package:e_commerce/pages/home/components/special_discount_card.dart';
import 'package:e_commerce/pages/home/components/section_title_card.dart';
import 'package:e_commerce/pages/home/controllers/c_special_offers.dart';
import 'package:e_commerce/pages/home/models/m_special_offers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialDiscount extends StatelessWidget {
  const SpecialDiscount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ModelSpecialOffers> data = ControllerSpecialOffers.dataModel;
    int length = ControllerSpecialOffers.dataLength;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SectionTitleCard(
              title: 'Special for you',
              onPress: () {},
            )),
        SizedBox(
          height: 18.h,
        ),
        SizedBox(
          height: 93.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ControllerSpecialOffers.dataLength,
            itemBuilder: (context, index) {
              ModelSpecialOffers snapShot = data[index];
              return Row(
                children: [
                  SizedBox(width: 15.w),
                  Padding(
                    padding: index == length - 1
                        ? EdgeInsets.only(right: 15.w)
                        : const EdgeInsets.only(right: 0),
                    child: SpecialDiscountCard(
                      image: snapShot.image,
                      category: snapShot.category,
                      numOfBrands: snapShot.numOfBrands,
                      onPress: snapShot.onPress,
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
