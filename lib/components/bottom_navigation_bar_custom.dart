import 'package:e_commerce/util/path_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom(
      {Key? key, required this.selectedIndex, required this.onItemTapped})
      : super(key: key);
  final int selectedIndex;
  final Function(int) onItemTapped;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.r),
        topRight: Radius.circular(25.r),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrangeAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              PathIcons.shopIcon,
              color: selectedIndex == 0 ? Colors.deepOrangeAccent : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              PathIcons.heartIcon,
              color: selectedIndex == 1 ? Colors.deepOrangeAccent : Colors.grey,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              PathIcons.chatBubbleIcon,
              color: selectedIndex == 2 ? Colors.deepOrangeAccent : Colors.grey,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              PathIcons.userIcon,
              color: selectedIndex == 3 ? Colors.deepOrangeAccent : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
