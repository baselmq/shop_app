import 'package:e_commerce/pages/home/models/m_popular_products.dart';
import 'package:e_commerce/provider/provider_image_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ImagesProduct extends StatefulWidget {
  const ImagesProduct({Key? key, required this.products}) : super(key: key);
  final ModelPopularProducts products;

  @override
  State<ImagesProduct> createState() => _ImagesProductState();
}

class _ImagesProductState extends State<ImagesProduct> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    int indexListImage = context.watch<ProviderImageColor>().index;
    List listElement = widget.products.listImages.elementAt(indexListImage);
    return Column(
      children: [
        SizedBox(
          width: 250.w,
          child: AspectRatio(
              aspectRatio: 1, child: Image.asset(listElement[selectedImage])),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(listElement.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedImage = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: 50.w,
                height: 44.h,
                margin: EdgeInsets.only(right: 15.w),
                padding: EdgeInsets.all(7.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: selectedImage == index
                        ? Colors.deepOrangeAccent
                        : Colors.white,
                    // Or Colors.deepOrangeAccent.withOpacity(selectedImage == index ? 1 : 0),
                  ),
                ),
                child: Image.asset(listElement[index]),
              ),
            );
          }),
        )
      ],
    );
  }
}
