import 'package:flutter/material.dart';
import 'package:list_search/comman.dart';

class DividerRelated {
  Comman comman;
  DividerRelated({required this.comman});
  getBasicDivider() {
    return Divider(
      color: comman.colorsRelated.getUltraLightFontColor(),
      height: comman.numberRelated.dividerHeight,
    );
  }
}
