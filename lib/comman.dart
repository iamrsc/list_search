import 'dart:convert';

import 'package:list_search/designs/colors_related.dart';
import 'package:list_search/designs/divider_related.dart';
import 'package:list_search/designs/icon_related.dart';
import 'package:list_search/designs/image_related.dart';
import 'package:list_search/designs/indecators_related.dart';
import 'package:list_search/designs/input_related.dart';
import 'package:list_search/designs/styles_related.dart';
import 'package:list_search/designs/text_related.dart';
import 'package:list_search/values/apis_related.dart';
import 'package:list_search/values/number_related.dart';
import 'package:list_search/values/string_related.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

//this file is use to store all shared object and comman function to use in project
class Comman {
  ColorsRelated colorsRelated = ColorsRelated();
  StringRelated stringRelated = StringRelated();
  ApisRelated apisRelated = ApisRelated();
  NumberRelated numberRelated = NumberRelated();
  late IndecatorsRelated indecatorsRelated;
  late StylesRelated stylesRelated;
  late TextRelated textRelated;
  late ImageRelated imageRelated;
  late IconRelated iconRelated;
  late DividerRelated dividerRelated;
  late InputRelated inputRelated;
  Comman() {
    stylesRelated = StylesRelated(comman: this);
    textRelated = TextRelated(comman: this);
    imageRelated = ImageRelated(comman: this);
    iconRelated = IconRelated(comman: this);
    indecatorsRelated = IndecatorsRelated(comman: this);
    dividerRelated = DividerRelated(comman: this);
    inputRelated = InputRelated(comman: this);
  }
  getDataHTTP({required String url, required callback}) async {
    final client = RetryClient(http.Client());
    try {
      client.read(Uri.parse(url)).then((value) {
        client.close();
        callback(json.decode(value));
      }, onError: (err) {
        client.close();
        callback(null);
      });
    } finally {
      client.close();
    }
  }
}
