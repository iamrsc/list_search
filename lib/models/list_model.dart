import 'dart:convert';

class ListModel {
  final String title;
  final List<ListItem> listItem;
  ListModel({required this.title, required this.listItem});

  ListModel.fromJson(Map<String, dynamic> jsonData)
      : title = jsonData['title'] ?? "",
        listItem = (jsonData["rows"] as List)
            .map((i) => ListItem.fromJson(i))
            .toList();

  Map<String, dynamic> toJson() => {'title': title};
}

class ListItem {
  final String title;
  final String description;
  final String imageHref;

  ListItem(
      {required this.title,
      required this.description,
      required this.imageHref});

  ListItem.fromJson(Map<String, dynamic> json)
      : title = json['title'] ?? "",
        description = json['description'] ?? "",
        imageHref = json['imageHref'] ?? "";

  Map<String, dynamic> toJson() => {'title': title};
}
