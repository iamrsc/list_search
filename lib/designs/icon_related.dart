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
}
