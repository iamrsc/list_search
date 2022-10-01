import 'package:flutter/material.dart';
import 'package:list_search/comman.dart';

class IndecatorsRelated {
  Comman comman;
  IndecatorsRelated({required this.comman});
  getBasicIndecator({required progress}) {
    return SizedBox(
        height: comman.numberRelated.largeIconSize,
        width: comman.numberRelated.largeIconSize,
        child: CircularProgressIndicator(value: progress));
  }
}
