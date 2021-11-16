import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_wallet/constants.dart';
import 'package:watch_wallet/ui/custom_button.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 60.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 260.h),
            SvgPicture.asset(
              "assets/wallet/logo.svg",
              height: 44.h,
            ),
            SizedBox(height: 24.h),
            Text(
              "안녕하세요,\nWatch 지갑입니다.",
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                  color: bodyColor),
            ),
            SizedBox(height: 60.h),
            Text(
              "Watch 지갑 이용을 위해\n로그인이 필요해요.",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: hintColor),
            ),
            SizedBox(height: 60.h),
            CustomButton(
              color: whiteColor,
              borderRadius: 40.r,
              borderColor: accectTextColor,
              borderWidth: 1.h,
              verticalPadding: 20.h,
              horizontalPadding: 97.w,
              onPressed: () {},
              child: Text(
                "로그인하기",
                style: TextStyle(
                    color: accectTextColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 18.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
