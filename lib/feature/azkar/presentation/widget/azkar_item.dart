import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moslem_app/core/style/text_style.dart';

class AzkarItem extends StatelessWidget {
  const AzkarItem({
    super.key,
    required this.index,
    required this.alzker,
    required this.alAgr,
  });

  final int index;

  final String alzker;

  final String alAgr;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xFFE8ECE8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Top decoration and number
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star, color: Color(0xff919F8F)),
                        Text(
                          '${index+1}',
                          style: AppTextStyle.font20Weight600Black
                              .copyWith(color: Color(0xff919F8F)),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      '\"$alzker\"',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.font20Weight600Black,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      alAgr,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.font20Weight600Black,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
