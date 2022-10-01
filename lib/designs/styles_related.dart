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
}
