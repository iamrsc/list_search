import 'package:flutter/material.dart';
import 'package:list_search/comman.dart';

class InputRelated {
  Comman comman;
  InputRelated({required this.comman});
  getRoundedInputFormField(
      {required controller, required String hint, required icon}) {
    return TextField(
      controller: controller,
      style: comman.stylesRelated.getFontNormal(),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: comman.colorsRelated.getBackgroundColor(),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(comman.numberRelated.globleRadius),
            borderSide:
                BorderSide(color: comman.colorsRelated.getBackgroundColor())),
        focusedBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(comman.numberRelated.globleRadius),
            borderSide:
                BorderSide(color: comman.colorsRelated.getBackgroundColor())),
        hintText: hint,
        hintStyle: comman.stylesRelated.getFontLightNormal(),
        suffixIcon: comman.iconRelated.getInputHelperIcon(icon: icon),
      ),
    );
  }
}
