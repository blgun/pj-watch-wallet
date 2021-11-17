import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watch_wallet/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_wallet/screens/etherium_action_page.dart';
import 'package:watch_wallet/ui/custom_button.dart';

enum SingingCharacter { lafayette, jefferson }

class EtheriumLandingPage extends StatefulWidget {
  EtheriumLandingPage({Key key}) : super(key: key);

  @override
  _EtheriumLandingPageState createState() => _EtheriumLandingPageState();
}

class _EtheriumLandingPageState extends State<EtheriumLandingPage> {
  final TextEditingController _inputNumberController =
      TextEditingController(text: "100000");
  bool _customTileExpanded = false;
  String dropdownValue = 'One';
  SingingCharacter _character = SingingCharacter.lafayette;
  String get _inputNumber => _inputNumberController.text;
  Future<void> _nextPageNavigator(BuildContext context) {
    return Navigator.of(context).push(
        MaterialPageRoute<void>(builder: (context) => EtheriumActionPage()));
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
          title: Text(
            "보내기",
            style: TextStyle(
                color: bodyColor, fontSize: 18.h, fontWeight: FontWeight.w700),
          ),
          backgroundColor: whiteColor),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 24.h),
        child: CustomButton(
          color: accectIconButtonColor,
          borderRadius: 24.r,
          borderColor: accectIconButtonColor,
          borderWidth: 1.w,
          verticalPadding: 8.h,
          horizontalPadding: 24.w,
          onPressed: () => _nextPageNavigator(context),
          child: Text(
            "다음 단계",
            style: TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 16.sp),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 42.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: ExpansionTile(
                leading: SvgPicture.asset(
                  "assets/wallet/coin_eth.svg",
                  height: 32.h,
                  width: 32.h,
                ),
                backgroundColor: whiteColor,
                collapsedBackgroundColor: whiteColor,
                onExpansionChanged: (bool expanded) {
                  setState(() => _customTileExpanded = expanded);
                },
                trailing: Icon(
                  _customTileExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: blackColor,
                  size: 30,
                ),
                title: Text(
                  '이더리움',
                  style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                subtitle: Text(
                  '전송 가능 수량:0000',
                  style: TextStyle(color: blackColor, fontSize: 14),
                ),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            '이더리움',
                            style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp),
                          ),
                          tileColor: Colors.red,
                          trailing: Radio<SingingCharacter>(
                            value: SingingCharacter.lafayette,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        Divider(color: blackColor, thickness: 0.2),
                        ListTile(
                          title: Text(
                            'CAP TOKEN',
                            style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp),
                          ),
                          trailing: Radio<SingingCharacter>(
                            value: SingingCharacter.jefferson,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.0.h,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: _inputNumberController,
              //focusNode: _passwordFocusNode,
              style: TextStyle(
                  color: bodyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 24.sp),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              //textInputAction: TextInputAction.done,
              onChanged: (inputNumber) => _updateState(),
              //onEditingComplete: _submit,
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Text(
              _inputNumber + " 원",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 96.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    color: whiteColor,
                    borderRadius: 24.r,
                    borderColor: accectIconButtonColor,
                    borderWidth: 1.w,
                    verticalPadding: 8.h,
                    horizontalPadding: 24.w,
                    onPressed: () {},
                    child: Text(
                      "초기화",
                      style: TextStyle(
                          color: accectTextColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    ),
                  ),
                  CustomButton(
                    color: accectTextColor,
                    borderRadius: 24.r,
                    borderColor: accectTextColor,
                    borderWidth: 1.w,
                    verticalPadding: 8.h,
                    horizontalPadding: 24.w,
                    onPressed: () {},
                    child: Text(
                      "최대 입력",
                      style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _updateState() {
    setState(() {});
  }
}
