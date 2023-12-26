import 'package:flutter/material.dart';

Color primaryColor = "#374e65".toColor();
// Color primaryColor = "#4751CA".toColor();
Color textColor = "#000000".toColor();
Color accentColors = "#ED6D4E".toColor();
// Color primaryColor = "#4751CA".toColor();
Color lightPrimaryColors = "#ECEDFA".toColor();
Color primaryTextColor = "#3F3F41".toColor();
Color disableIconColor = "#A7ABAE".toColor();
Color whiteColor = "#FFFFFF".toColor();
Color cardColor = "#FFFFFF".toColor();
Color greyBg = "#E6E9EE".toColor();
Color viewColor = "#CCCCCC".toColor();
Color iconColor = "#783E01".toColor();
Color cellColor = "#E4E6ED".toColor();
Color subTextColor = "#7D90AA".toColor();
Color textColor1 = "#293040".toColor();
Color colorOrange = "#ED6D4E".toColor();
Color shadowColor = Colors.transparent;
// Color shadowColor = Colors.grey.shade400;

// Color ConstantColors.bgColor = "#F2F6F9".toColor();
class ConstantColors {
  static Color bgColor = "#F2F6F9".toColor();
  static Color profileBgColor = "#E4E6ED".toColor();
  //#374e65
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
