import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/constants.dart';
import 'package:watch_wallet/screens/token_detail_page.dart';
import 'package:watch_wallet/ui/custom_button.dart';
import 'package:watch_wallet/ui/transaction_cart.dart';

/// This is the stateless widget that the main application instantiates.
class CapTokenTabOne extends StatelessWidget {
  Future<void> _nextPageNavigator(BuildContext context) {
    return Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (context) => TokenDetailPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.h),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.w),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(16.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '나의 이더리움 지갑',
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        '1000000',
                        style: TextStyle(
                            color: bodyColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '원',
                        style: TextStyle(
                            color: bodyColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            TransactionCart(
                image: "assets/wallet/coin_eth.svg",
                count: "1.000,000",
                typeName: "이더리움",
                onTap: () => _nextPageNavigator(context)),
            SizedBox(
              height: 16.h,
            ),
            TransactionCart(
                image: "assets/wallet/coin_eth.svg",
                count: "1.000,000",
                typeName: "CAP - Token",
                onTap: () {}),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
              color: accectIconButtonColor,
              borderRadius: 16.r,
              borderColor: accectIconButtonColor,
              borderWidth: 1.w,
              verticalPadding: 16.h,
              horizontalPadding: 150.w,
              onPressed: () {},
              child: Text(
                "다음 단계",
                style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp),
              ),
            ),
          ],
        ));
  }
}
