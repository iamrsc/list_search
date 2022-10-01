import 'package:flutter/material.dart';
import 'package:list_search/comman.dart';
import 'package:list_search/modules/home/home_controller.dart';

class Home extends StatefulWidget {
  final Comman comman;
  const Home({Key? key, required this.comman}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeController controller;
  @override
  void initState() {
    controller = HomeController(comman: widget.comman);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: widget.comman.stringRelated.defaultTitle,
        theme: ThemeData(
          primarySwatch: widget.comman.colorsRelated.getThemeColor(),
        ),
        home: Scaffold(
            extendBodyBehindAppBar: true,
            extendBody: true,
            appBar: AppBar(
                title: ValueListenableBuilder(
                    valueListenable: controller.dataList,
                    builder: (context, value, child) {
                      return widget.comman.textRelated.getBackgroundColorHeader(
                          title: controller.dataList.value.title);
                    })),
            body: Padding(
                padding: EdgeInsets.only(
                    left: widget.comman.numberRelated.globlePadding,
                    right: widget.comman.numberRelated.globlePadding),
                child: RefreshIndicator(
                    onRefresh: () async {
                      controller.getData();
                    },
                    child: ValueListenableBuilder(
                        valueListenable: controller.dataList,
                        builder: (context, value, child) {
                          return ListView.builder(
                              itemCount:
                                  controller.dataList.value.listItem.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: EdgeInsets.only(
                                        top: index == 0
                                            ? widget.comman.numberRelated
                                                .globlePadding
                                            : 0,
                                        bottom: widget.comman.numberRelated
                                            .globlePadding),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: 200,
                                            width: double.infinity,
                                            child: widget.comman.imageRelated
                                                .getCacheImage(
                                                    uri: controller
                                                        .dataList
                                                        .value
                                                        .listItem[index]
                                                        .imageHref)),
                                        widget.comman.textRelated
                                            .getFontSubHeader(
                                                title: controller.dataList.value
                                                    .listItem[index].title),
                                        widget.comman.textRelated.getFontNormal(
                                            title: controller.dataList.value
                                                .listItem[index].description)
                                      ],
                                    ));
                              });
                        })))));
  }
}
