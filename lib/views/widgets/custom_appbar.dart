import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hogr/views/core/theme/color_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: surface,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
      ),
      leading:  IconButton(
        icon:  Icon(
          Icons.arrow_back_ios_sharp,
          color: textColor,
        ),
        onPressed: () {
          Get.back();
        },
      ),
      elevation: 0,
    );
  }

  @override
  
  Size get preferredSize => const Size.fromHeight(50);
}
