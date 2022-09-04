import 'package:e_commerce/pages/home/models/m_popular_products.dart';
import 'package:e_commerce/provider/provider_image_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({Key? key, required this.products}) : super(key: key);
  final ModelPopularProducts products;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          ...List.generate(widget.products.colors.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedColor = index;
                  context.read<ProviderImageColor>().index = index;
                  context.read<ProviderImageColor>().changeImage();
                });
              },
              child: Container(
                width: 40.w,
                height: 35.h,
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedColor == index
                        ? Colors.deepOrangeAccent
                        : Colors.transparent,
                    width: 1.5.w,
                  ),
                  shape: BoxShape.circle,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: widget.products.colors[index],
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            );
          }),
          const Spacer(),
          const RoundedElevatedButton(
            icon: Icons.remove,
          ),
          const RoundedElevatedButton(
            icon: Icons.add,
          ),
        ],
      ),
    );
  }
}

// class SelectColorDots extends StatelessWidget {
//   const SelectColorDots(
//       {Key? key, required this.color, required this.isSelected})
//       : super(key: key);
//   final Color color;
//   final bool isSelected;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         width: 40.w,
//         height: 35.h,
//         padding: EdgeInsets.all(8.w),
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: isSelected ? Colors.deepOrangeAccent : Colors.transparent,
//             width: 1.5.w,
//           ),
//           shape: BoxShape.circle,
//         ),
//         child: DecoratedBox(
//           decoration: BoxDecoration(
//             color: color,
//             shape: BoxShape.circle,
//           ),
//         ),
//       ),
//     );
//   }
// }

class RoundedElevatedButton extends StatelessWidget {
  const RoundedElevatedButton({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.grey.withOpacity(0.2),
        primary: Colors.white,
        onPrimary: Colors.deepOrangeAccent,
        minimumSize: Size(40.w, 40.h),
        shape: const CircleBorder(),
      ),
      onPressed: () {},
      child: Icon(icon),
    );
  }
}
