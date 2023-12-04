import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/cupertino.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});

  final List<String> imagesPaths = const [
    'assets/images/credit.svg',
    'assets/images/paypal.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.0,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: PaymentMethodItem(
              imagePath: imagesPaths[index],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: imagesPaths.length,
      ),
    );
  }
}
