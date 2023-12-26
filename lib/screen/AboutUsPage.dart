import 'package:flutter/material.dart';

import '../constants/ConstantColors.dart';
import '../constants/ConstantWidgets.dart';
import '../constants/SizeConfig.dart';
import '../generated/l10n.dart';


class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPage createState() {
    return _AboutUsPage();
  }
}

class _AboutUsPage extends State<AboutUsPage> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantColors.bgColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: ConstantColors.bgColor,
            title: getCustomText(S.of(context).aboutUs, textColor, 1,
                TextAlign.center, FontWeight.bold, 18),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    color: textColor,
                  ),
                  onPressed: _requestPop,
                );
              },
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
              child: Container(
                  margin:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  child: getCustomTextWithoutMax(S.of(context).lorem_text2,
                      textColor, TextAlign.justify, FontWeight.w500, 12))),
        ),
        onWillPop: _requestPop);
  }
}
