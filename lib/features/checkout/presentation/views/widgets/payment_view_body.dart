import 'package:checkout_payment/core/widgets/custom_button.dart';
import 'package:checkout_payment/features/checkout/presentation/views/thank_you_view.dart';
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
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

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
            autoValidateMode: autoValidateMode,
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
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThankYouView(),
                      ),
                    );
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'Complete Payment',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
