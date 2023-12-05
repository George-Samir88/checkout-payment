import 'package:checkout_payment/core/widgets/custom_button.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_credit_card.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 32.0,
            ),
            const PaymentMethodsListView(),
            const CustomCreditCard(),
            const SizedBox(
              height: 35.0,
            ),
            CustomButton(
              onTap: () {},
              text: 'Complete Payment',
            ),
            const SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}
