class PaymentIntentObjectInput {
  final String amount;
  final String currency;

  PaymentIntentObjectInput({required this.amount, required this.currency});

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
    };
  }
}
