import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/constants.dart';
import 'package:flutter_svg/svg.dart';

class TransactionCart extends StatelessWidget {
  const TransactionCart(
      {Key key, this.count, this.image, this.typeName, this.onTap})
      : super(key: key);
  final String image;
  final String typeName;
  final String count;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r), color: whiteColor),
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 16.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              image,
              height: 32.h,
              width: 32.w,
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  typeName,
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      '보유량 :',
                      style: TextStyle(
                          color: hintColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      count,
                      style: TextStyle(
                          color: hintColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      'ETH',
                      style: TextStyle(
                          color: hintColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: 20.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  count,
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  '원',
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
