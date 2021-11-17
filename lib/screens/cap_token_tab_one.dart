import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/constants.dart';

/// This is the stateless widget that the main application instantiates.
class CapTokenTabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.h),
        child: Column(
          children: [
            Text(
              '이더리움 지갑',
              style: TextStyle(
                  color: bodyColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ));
  }
}
