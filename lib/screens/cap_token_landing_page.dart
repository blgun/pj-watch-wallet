import 'package:flutter/material.dart';
import 'package:watch_wallet/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_wallet/screens/cap_token_tab_one.dart';

class CapTokenLandingPage extends StatefulWidget {
  CapTokenLandingPage({Key key}) : super(key: key);

  @override
  _CapTokenLandingPageState createState() => _CapTokenLandingPageState();
}

class _CapTokenLandingPageState extends State<CapTokenLandingPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
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
            '이더리움 지갑',
            style: TextStyle(
                color: bodyColor, fontSize: 18.sp, fontWeight: FontWeight.w700),
          ),
          backgroundColor: backgroundColor,
          bottom: TabBar(
            labelColor: accectTextColor,
            unselectedLabelColor: hintColor,
            indicatorColor: backgroundColor,
            labelPadding: EdgeInsets.all(0),
            tabs: <Widget>[
              Container(
                child: Text(
                  '토큰',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
                ),
              ),
              Text(
                'NFT',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CapTokenTabOne(),
            Center(
              child: Text("It's rainy"),
            ),
          ],
        ),
      ),
    );
  }
}
