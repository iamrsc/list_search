import 'package:flutter/material.dart';
import 'package:list_search/comman.dart';
import 'package:list_search/modules/home/home.dart';

void main() {
  final Comman comman = Comman();
  runApp(MyApp(
    comman: comman,
  ));
}

class MyApp extends StatefulWidget {
  final Comman comman;
  const MyApp({Key? key, required this.comman}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: widget.comman.stringRelated.defaultTitle,
        theme: ThemeData(
          primarySwatch: widget.comman.colorsRelated.getThemeColor(),
        ),
        home: Scaffold(
          appBar: AppBar(
              title: widget.comman.textRelated.getBackgroundColorHeader(
                  title: widget.comman.stringRelated.defaultTitle)),
          body: Home(
            comman: widget.comman,
          ),
        ));
  }
}
