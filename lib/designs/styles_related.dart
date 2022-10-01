import 'package:flutter/cupertino.dart';
import 'package:list_search/comman.dart';

class StylesRelated {
  Comman comman;
  StylesRelated({required this.comman});
  getBackgroundColorHeader() {
    return TextStyle(
        color: comman.colorsRelated.getBackgroundColor(), fontSize: 20);
  }

  getThemeColorHeader() {
    return TextStyle(color: comman.colorsRelated.getThemeColor(), fontSize: 20);
  }

  getFontColorSubHeader() {
    return TextStyle(
        color: comman.colorsRelated.getFontColor(),
        fontSize: 18,
        fontWeight: FontWeight.bold);
  }

  getLightFontSubHeaderStyle() {
    return TextStyle(
        color: comman.colorsRelated.getBackgroundColor(),
        fontSize: 18,
        fontWeight: FontWeight.bold);
  }

  getFontNormal() {
    return TextStyle(color: comman.colorsRelated.getFontColor(), fontSize: 16);
  }

  getFontLightNormal() {
    return TextStyle(
        color: comman.colorsRelated.getLightFontColor(), fontSize: 16);
  }

  getFontNormalBackcolor() {
    return TextStyle(
        color: comman.colorsRelated.getBackgroundColor(), fontSize: 16);
  }
}
