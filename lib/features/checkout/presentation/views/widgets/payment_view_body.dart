import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 32.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PaymentMethodItem(
              isActive: false,
              imagePath: 'assets/images/credit.svg',
            ),
            PaymentMethodItem(
              isActive: true,
              imagePath: 'assets/images/paypal.svg',
            ),
          ],
        ),
      ],
    );
  }
}
