class PaymentIntentObjectInput {
  final String amount;
  final String currency;
  final String customerId;

  PaymentIntentObjectInput(
      {required this.amount, required this.currency, required this.customerId});

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
      'customer': customerId,
    };
  }
}
