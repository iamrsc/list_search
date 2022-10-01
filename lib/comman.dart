import 'package:list_search/designs/colors_related.dart';
import 'package:list_search/designs/styles_related.dart';
import 'package:list_search/designs/text_related.dart';
import 'package:list_search/values/string_related.dart';

class Comman {
  ColorsRelated colorsRelated = ColorsRelated();
  StringRelated stringRelated = StringRelated();
  late StylesRelated stylesRelated;
  late TextRelated textRelated;
  Comman() {
    stylesRelated = StylesRelated(comman: this);
    textRelated = TextRelated(comman: this);
  }
}
