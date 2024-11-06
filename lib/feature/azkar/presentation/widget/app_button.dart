import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moslem_app/core/style/text_style.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.image, required this.onTap});

  final String text;

  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 16.h,right: 15.w,left: 15.w),
      child: GestureDetector(
        onTap: onTap ,
        child: Container(
          height: 80.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40.r),
          ),
          padding: EdgeInsets.only(right: 7.w),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30.r,
                child: Image(image: AssetImage(image)),
              ),
               SizedBox(width: 15.w),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.font18Weight500Black87 ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
