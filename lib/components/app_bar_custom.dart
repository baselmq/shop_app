import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom(
      {Key? key,
      required this.title,
      required this.fillIcon,
      this.centerTitle = true,
      this.icon,
      this.actions})
      : super(key: key);
  final String title;
  final bool fillIcon;
  final bool centerTitle;
  final Widget? icon;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Muli',
          color: Colors.grey[600],
        ),
      ),
      centerTitle: centerTitle,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.grey[600]),
      leading: fillIcon ? icon : Container(width: 0),
      actions: actions,
    );
  }

  @override
  Size get preferredSize =>
      Size(double.infinity, AppBar().preferredSize.height);
}
