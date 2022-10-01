import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:list_search/comman.dart';

class ImageRelated {
  Comman comman;
  ImageRelated({required this.comman});
  getCacheImage({required String uri}) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: "http://via.placeholder.com/350x150",
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
          child: comman.indecatorsRelated
              .getBasicIndecator(progress: downloadProgress.progress)),
      errorWidget: (context, url, error) =>
          Center(child: comman.iconRelated.getErrorIcon()),
    );
  }
}
