import 'package:checkout_payment/core/widgets/custom_button.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_credit_card.dart';

class PaymentViewBody extends StatefulWidget {
  const PaymentViewBody({super.key});

  @override
  State<PaymentViewBody> createState() => _PaymentViewBodyState();
}

class _PaymentViewBodyState extends State<PaymentViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 32.0,
          ),
        ),
        const SliverToBoxAdapter(child: PaymentMethodsListView()),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 12.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                onTap: () {},
                text: 'Complete Payment',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
