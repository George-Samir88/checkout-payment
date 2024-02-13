import 'amount.dart';
import 'item_list.dart';

class ItemListModel {
  Amount? amount;
  String? description;
  ItemList? itemList;

  ItemListModel({this.amount, this.description, this.itemList});

  factory ItemListModel.fromJson(Map<String, dynamic> json) => ItemListModel(
        amount: json['amount'] == null
            ? null
            : Amount.fromJson(json['amount'] as Map<String, dynamic>),
        description: json['description'] as String?,
        itemList: json['item_list'] == null
            ? null
            : ItemList.fromJson(json['item_list'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'amount': amount?.toJson(),
        'description': description,
        'item_list': itemList?.toJson(),
      };
}
