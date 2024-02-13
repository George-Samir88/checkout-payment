import 'item.dart';

class ItemList {
  final List<Item>? items;

  ItemList({required this.items});

  factory ItemList.fromJson(Map<String, dynamic> json) => ItemList(
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
