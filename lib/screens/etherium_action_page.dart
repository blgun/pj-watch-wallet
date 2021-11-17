import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/constants.dart';
import 'package:watch_wallet/ui/custom_button.dart';
import 'package:flutter_svg/svg.dart';

enum SingingCharacter { lafayette, jefferson }

class EtheriumActionPage extends StatefulWidget {
  EtheriumActionPage({Key key}) : super(key: key);

  @override
  _EtheriumActionPageState createState() => _EtheriumActionPageState();
}

class _EtheriumActionPageState extends State<EtheriumActionPage> {
  final TextEditingController _inputNumberController =
      TextEditingController(text: "100000");
  bool _customTileExpanded = false;
  double _currentSliderValue = 20;
  String dropdownValue = 'One';
  SingingCharacter _character = SingingCharacter.lafayette;
  String get _inputNumber => _inputNumberController.text;
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
          onPressed: () {},
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
              height: 40.0.h,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '전송수수료',
                      style: TextStyle(
                          color: hintColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    ),
                    Text(
                      '1000000' + " ETH",
                      style: TextStyle(
                          color: hintColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        value: _currentSliderValue,
                        min: 0,
                        max: 100,
                        activeColor: hoverColor,
                        inactiveColor: inputColor,
                        thumbColor: accectIconButtonColor,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '느림',
                      style: TextStyle(
                          color: hintColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp),
                    ),
                    Text(
                      '빠름',
                      style: TextStyle(
                          color: hintColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Text(
              '받는 사람',
              style: TextStyle(
                  color: bodyColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              decoration: BoxDecoration(
                  color: inputColor, borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      //textAlign: TextAlign.center,
                      controller: _inputNumberController,
                      //focusNode: _passwordFocusNode,
                      style: TextStyle(
                          color: bodyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      //textInputAction: TextInputAction.done,
                      onChanged: (inputNumber) => _updateState(),
                      //onEditingComplete: _submit,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("hello");
                    },
                    child: SvgPicture.asset(
                      "assets/wallet/capture_ic_24.svg",
                      height: 24.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Watch는 별도의 출금 수수료를 요구하지 않습니다. \n전송 수수료에 해당하는 ETH를 보유해야만 출금이 가능 합니다\n전송 수수료에 따라 송금 시간 차이가 발생할 수 있습니다.\n전송 수수료는 전 세계 ETH 전송량에 따라 변동될 수 있습니다.\n보내기 정보의 오류로 인한 문제는 Watch가 책임지지 않습니다.\n보내기 이후 송금 완료는 최대 48시간 까지 소요될 수 있습니다.\nWatch는 별도의 출금 수수료를 요구하지 않습니다.\n전송 수수료에 해당하는 ETH를 보유해야만 출금이 가능 합니다\n전송 수수료에 따라 송금 시간 차이가 발생할 수 있습니다.\n전송 수수료는 전 세계 ETH 전송량에 따라 변동될 수 있습니다.\n보내기 정보의 오류로 인한 문제는 Watch가 책임지지 않습니다.\n보내기 이후 송금 완료는 최대 48시간 까지 소요될 수 있습니다.',
              style: TextStyle(
                  color: bodyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp),
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
