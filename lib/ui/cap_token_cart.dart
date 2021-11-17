import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/constants.dart';
import 'package:watch_wallet/ui/custom_button.dart';

class CapTokenCart extends StatelessWidget {
  const CapTokenCart({Key key, this.ctk, this.isCapToken, this.onPress})
      : super(key: key);
  final String ctk;
  final bool isCapToken;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        image: DecorationImage(
          image: AssetImage(isCapToken
              ? "assets/wallet/cap_token_background.png"
              : "assets/wallet/etherium_cart_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      height: 144.h,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isCapToken
                  ? Text(
                      "CAP Token",
                      style: TextStyle(
                          color: bodyColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.sp),
                    )
                  : Text(
                      "이더리움 지갑",
                      style: TextStyle(
                          color: bodyColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.sp),
                    ),
              Row(
                children: [
                  Text(
                    ctk,
                    style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    "원",
                    style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isCapToken
                  ? Row(
                      children: [
                        Text(
                          ctk,
                          style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          "CTK",
                          style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp),
                        ),
                      ],
                    )
                  : const Text(""),
              CustomButton(
                child: Text(
                  "보내기",
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 14.sp),
                ),
                verticalPadding: 8.h,
                horizontalPadding: 24.w,
                borderRadius: 8.r,
                color: titleColor,
                onPressed: onPress,
              )
            ],
          )
        ],
      ),
    );
  }
}
