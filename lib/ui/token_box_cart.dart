import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/constants.dart';

class TokenBoxCart extends StatelessWidget {
  const TokenBoxCart({Key key, this.boxType, this.count}) : super(key: key);
  final String boxType;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20.w, 24.h, 20.w, 16.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r), color: whiteColor),
        child: Column(
          children: [
            Text(
              boxType,
              style: TextStyle(
                  color: bodyColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 14.sp),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              count + " CTK",
              style: TextStyle(
                  color: bodyColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 14.sp),
            ),
            SizedBox(
              height: 14.h,
            ),
            Container(
              height: 24.h,
              width: 24.w,
              color: dividor2Color,
            ),
          ],
        ));
  }
}
