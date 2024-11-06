import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String backgroundImage;

  const CustomAppBar({
    super.key,
    required this.backgroundImage,
  });

  @override
  Size get preferredSize => Size.fromHeight(120.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: const Color(0xff919F8F),
      toolbarHeight: 120,
      title: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 30.r,
                child: Image.asset("assets/images/back.png"),
              ),
            ),
            SizedBox(width: 100.w),
            CircleAvatar(
              radius: 60.r,
              backgroundImage: AssetImage(backgroundImage),
            ),
          ],
        ),
      ),
    );
  }
}
