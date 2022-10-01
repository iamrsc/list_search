import 'package:flutter/material.dart';
import 'package:list_search/comman.dart';
import 'package:list_search/modules/home/home.dart';

void main() {
  final Comman comman = Comman();
  runApp(Home(
    comman: comman,
  ));
}
