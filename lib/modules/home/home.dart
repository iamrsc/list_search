import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  body() {
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            extendBody: true,
            appBar: AppBar(
                title: ValueListenableBuilder(
                    valueListenable: controller.seachBox,
                    builder: (context, value, child) => controller
                                .seachBox.value ==
                            true
                        ? SizedBox(
                            height: 40,
                            child: widget.comman.inputRelated
                                .getRoundedInputFormField(
                                    controller: controller.searchController,
                                    hint: widget.comman.stringRelated.seacrh,
                                    icon: Icons.search),
                          )
                        : ValueListenableBuilder(
                            valueListenable: controller.dataList,
                            builder: (context, value, child) {
                              return widget.comman.textRelated
                                  .getBackgroundColorHeader(
                                      title: controller.dataList.value.title);
                            })),
                actions: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: widget.comman.numberRelated.globlePadding,
                          right: widget.comman.numberRelated.globlePadding),
                      child: ValueListenableBuilder(
                          valueListenable: controller.seachBox,
                          builder: (context, value, child) => InkWell(
                              onTap: () {
                                controller.seachBox.value =
                                    !controller.seachBox.value;
                              },
                              child: widget.comman.iconRelated.getIcon(
                                  icon: controller.seachBox.value == false
                                      ? Icons.search
                                      : Icons.close,
                                  color: widget.comman.colorsRelated
                                      .getBackgroundColor()))))
                ]),
            body: RefreshIndicator(
                onRefresh: () async {
                  controller.getData();
                },
                child: ValueListenableBuilder(
                    valueListenable: controller.dataList,
                    builder: (context, value, child) {
                      return ListView.builder(
                          itemCount: controller.dataList.value.listItem.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.only(
                                    bottom: widget
                                        .comman.numberRelated.globlePadding),
                                child: Material(
                                    elevation: widget
                                        .comman.numberRelated.globleElevation,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            SizedBox(
                                                height: 300,
                                                width: double.infinity,
                                                child: widget
                                                    .comman.imageRelated
                                                    .getCacheImage(
                                                        uri: controller
                                                            .dataList
                                                            .value
                                                            .listItem[index]
                                                            .imageHref)),
                                            Container(
                                              color: widget.comman.colorsRelated
                                                  .getShadowColor(),
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(widget
                                                  .comman
                                                  .numberRelated
                                                  .globlePadding),
                                              child: widget.comman.textRelated
                                                  .getLightFontSubHeaderStyle(
                                                      title: controller
                                                          .dataList
                                                          .value
                                                          .listItem[index]
                                                          .title),
                                            )
                                          ],
                                        ),
                                        Padding(
                                            padding: EdgeInsets.all(widget
                                                .comman
                                                .numberRelated
                                                .globlePadding),
                                            child: widget.comman.textRelated
                                                .getFontNormal(
                                                    title: controller
                                                        .dataList
                                                        .value
                                                        .listItem[index]
                                                        .description)),
                                      ],
                                    )));
                          });
                    }))));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: widget.comman.stringRelated.defaultTitle,
        theme: ThemeData(
          primarySwatch: widget.comman.colorsRelated.getThemeColor(),
        ),
        home: body());
  }
}
