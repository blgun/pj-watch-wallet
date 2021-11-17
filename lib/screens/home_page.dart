import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/constants.dart';
import 'package:watch_wallet/screens/require_password_page.dart';
import 'package:watch_wallet/ui/cap_token_cart.dart';
import 'package:watch_wallet/ui/custom_button.dart';
import 'package:watch_wallet/ui/token_box_cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  Future<void> _requirePasswordNavigator(
      {BuildContext context, bool isCapToken}) {
    return Navigator.of(context).push(
      MaterialPageRoute<void>(
          builder: (context) => RequirePasswordPage(isCapToken: isCapToken)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40.w, 88.h, 40.w, 46.h),
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "안녕하세요\n와치님",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                ),
                SizedBox(
                  width: 104.w,
                  height: 32.h,
                  child: CustomButton(
                    color: accectIconButtonColor,
                    borderRadius: 24.r,
                    borderColor: accectIconButtonColor,
                    borderWidth: 1.h,
                    verticalPadding: 8.h,
                    horizontalPadding: 17.w,
                    onPressed: () => {},
                    child: Text(
                      "로그인하기",
                      style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 44.h,
            ),
            Text(
              "나의 토큰",
              style: TextStyle(
                  color: bodyColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp),
            ),
            SizedBox(
              height: 16.h,
            ),
            CapTokenCart(
              ctk: "100,000,000",
              isCapToken: true,
              onPress: () =>
                  _requirePasswordNavigator(context: context, isCapToken: true),
            ),
            SizedBox(
              height: 12.h,
            ),
            CapTokenCart(
              ctk: "100,000,000",
              isCapToken: false,
              onPress: () => _requirePasswordNavigator(
                  context: context, isCapToken: false),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Cap Token 획득하기",
              style: TextStyle(
                  color: bodyColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TokenBoxCart(
                  count: "1",
                  boxType: "랜덤 박스",
                ),
                TokenBoxCart(
                  count: "1",
                  boxType: "친구 초대",
                ),
                TokenBoxCart(
                  count: "0.1",
                  boxType: "의견 투표",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
