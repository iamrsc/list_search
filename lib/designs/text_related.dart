import 'package:flutter/cupertino.dart';
import 'package:list_search/comman.dart';

class TextRelated {
  Comman comman;
  TextRelated({required this.comman});
  getBackgroundColorHeader({required String title}) {
    return Text(title, style: comman.stylesRelated.getBackgroundColorHeader());
  }

  getThemeColorHeader({required String title}) {
    return Text(title, style: comman.stylesRelated.getThemeColorHeader());
  }

  getFontSubHeader({required String title}) {
    return Text(title, style: comman.stylesRelated.getFontColorSubHeader());
  }

  getLightFontSubHeaderStyle({required String title}) {
    return Text(title,
        style: comman.stylesRelated.getLightFontSubHeaderStyle());
  }

  getFontNormal({required String title}) {
    return Text(title, style: comman.stylesRelated.getFontNormal());
  }
}
