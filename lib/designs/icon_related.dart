import 'package:flutter/material.dart';
import 'package:list_search/comman.dart';

class IconRelated {
  Comman comman;
  IconRelated({required this.comman});
  getErrorIcon() {
    return Icon(
      Icons.error,
      color: comman.colorsRelated.getErrorColor(),
      size: comman.numberRelated.largeIconSize,
    );
  }

  getInputHelperIcon({required icon}) {
    return Icon(
      icon,
      color: comman.colorsRelated.getThemeColor(),
      size: comman.numberRelated.basicIconSize,
    );
  }

  getIcon({required icon, double size = 25, color = Colors.white}) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}
