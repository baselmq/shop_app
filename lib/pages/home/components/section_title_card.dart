import 'package:e_commerce/components/text_custom.dart';
import 'package:flutter/material.dart';

class SectionTitleCard extends StatelessWidget {
  const SectionTitleCard({Key? key, required this.title, required this.onPress})
      : super(key: key);
  final String title;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SubTextCustom(
          text: title,
          fontSize: 18,
          color: Colors.black,
        ),
        GestureDetector(
          onTap: onPress,
          child: SubTextCustom(
            text: 'See More',
            color: Colors.grey.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
