import 'package:flutter/cupertino.dart';
import 'package:list_search/comman.dart';

class TextRelated {
  Comman comman;
  TextRelated({required this.comman});
  getBackgroundColorHeader({required String title}) {
    return Text(title, style: comman.stylesRelated.getBackgroundColorHeader());
  }

  getThemeColorHedaer({required String title}) {
    return Text(title, style: comman.stylesRelated.getThemeColorHeader());
  }
}
