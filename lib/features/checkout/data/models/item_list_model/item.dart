class Item {
  final String? name;
  final int? quantity;
  final String? price;
  final String? currency;

  Item(
      {required this.name,
      required this.quantity,
      required this.price,
      required this.currency});

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json['name'] as String?,
        quantity: json['quantity'] as int?,
        price: json['price'] as String?,
        currency: json['currency'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'price': price,
        'currency': currency,
      };
}
