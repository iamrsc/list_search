import 'package:flutter/cupertino.dart';
import 'package:list_search/comman.dart';
import 'package:list_search/models/list_model.dart';

class HomeController {
  final Comman comman;
  ValueNotifier<ListModel> dataList =
      ValueNotifier(ListModel(title: "", listItem: []));
  TextEditingController searchController = TextEditingController();

  ValueNotifier<dynamic> screen = ValueNotifier(Orientation.values);
  ValueNotifier<bool> seachBox = ValueNotifier(false);
  HomeController({required this.comman}) {
    getData();
    searchController.addListener(seachtextChange);
  }

  getData() async {
    searchController.text = "";
    comman.getDataHTTP(
        url: comman.apisRelated.getListApi,
        callback: (response) {
          if (response != null) {
            dataList.value = ListModel.fromJson(response);
          }
        });
  }

  seachtextChange() {
    for (var i = 0; i < dataList.value.listItem.length; i++) {
      var item = dataList.value.listItem[i];
      if (item.title
              .toLowerCase()
              .contains(searchController.text.toLowerCase()) ==
          true) {
        dataList.value.listItem.removeAt(i);
        dataList.value.listItem.insert(0, item);
        dataList.notifyListeners();
      }
    }
  }
}
