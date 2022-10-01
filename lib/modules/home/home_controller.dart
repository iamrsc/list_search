import 'package:flutter/foundation.dart';
import 'package:list_search/comman.dart';
import 'package:list_search/models/list_model.dart';

class HomeController {
  final Comman comman;
  ValueNotifier<ListModel> dataList =
      ValueNotifier(ListModel(title: "", listItem: []));
  HomeController({required this.comman}) {
    getData();
  }

  getData() async {
    comman.getDataHTTP(
        url: comman.apisRelated.getListApi,
        callback: (response) {
          if (response != null) {
            dataList.value = ListModel.fromJson(response);
          }
        });
  }
}
