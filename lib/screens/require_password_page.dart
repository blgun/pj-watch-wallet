import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:watch_wallet/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/screens/cap_token_landing_page.dart';
import 'package:watch_wallet/screens/etherium_langing_page.dart';

class RequirePasswordPage extends StatefulWidget {
  RequirePasswordPage({Key key, this.isCapToken}) : super(key: key);
  final bool isCapToken;

  @override
  _RequirePasswordPageState createState() => _RequirePasswordPageState();
}

class _RequirePasswordPageState extends State<RequirePasswordPage> {
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType> errorController;
  String currentText = "";
  Future<void> _nextPageNavigator(BuildContext context) {
    return Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (context) =>
            widget.isCapToken ? CapTokenLandingPage() : EtheriumLandingPage()));
  }

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
          backgroundColor: backgroundColor),
      body: Container(
        color: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 76.w),
        child: Column(
          children: [
            SizedBox(
              height: 78.h,
            ),
            Text("비밀번호 입력",
                style: TextStyle(
                    fontSize: 24.sp,
                    color: bodyColor,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 24.h,
            ),
            Text("비밀번호 6자리를 입력하세요",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: blackColor,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: 60.h,
            ),
            PinCodeTextField(
              appContext: (context),
              length: 6,
              obscureText: true,
              showCursor: false,
              animationType: AnimationType.fade,
              textStyle: TextStyle(fontSize: 14.sp),
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  borderRadius: BorderRadius.circular(20.r),
                  fieldHeight: 20.h,
                  fieldWidth: 20.w,
                  activeFillColor: bodyColor,
                  selectedFillColor: accectIconButtonColor,
                  selectedColor: accectIconButtonColor,
                  inactiveFillColor: whiteColor,
                  inactiveColor: whiteColor,
                  activeColor: whiteColor),
              animationDuration: const Duration(milliseconds: 200),
              enableActiveFill: true,
              errorAnimationController: errorController,
              controller: textEditingController,
              onCompleted: (v) {
                _nextPageNavigator(context);
              },
              onChanged: (value) {
                setState(() {
                  currentText = value;
                });
              },
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              beforeTextPaste: (text) {
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            )
          ],
        ),
      ),
    );
  }
}
