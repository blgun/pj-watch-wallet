import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/constants.dart';
import 'package:watch_wallet/ui/custom_button.dart';
import 'package:watch_wallet/ui/transaction_cart.dart';

class TokenDetailPage extends StatelessWidget {
  const TokenDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: bodyColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0.0,
          title: Text(
            "보내기",
            style: TextStyle(
                color: bodyColor, fontSize: 18.h, fontWeight: FontWeight.w700),
          ),
          backgroundColor: backgroundColor),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.w),
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TransactionCart(
              count: "1,000,000",
              image: "assets/wallet/coin_eth.svg",
              typeName: "이더리움",
              onTap: () {},
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  color: whiteColor,
                  borderRadius: 40.r,
                  borderColor: accectIconButtonColor,
                  borderWidth: 1.w,
                  verticalPadding: 12.h,
                  horizontalPadding: 37.w,
                  onPressed: () {},
                  child: Text(
                    "받기",
                    style: TextStyle(
                        color: accectIconButtonColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  width: 40.w,
                ),
                CustomButton(
                  color: accectIconButtonColor,
                  borderRadius: 40.r,
                  borderColor: accectIconButtonColor,
                  borderWidth: 1.w,
                  verticalPadding: 12.h,
                  horizontalPadding: 37.w,
                  onPressed: () {},
                  child: Text(
                    "보내기",
                    style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 14.sp),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "거래내역",
              style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 14.sp),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(8.r)),
            )
          ],
        ),
      ),
    );
  }
}
