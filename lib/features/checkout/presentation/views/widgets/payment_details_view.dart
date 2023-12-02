import 'package:checkout_payment/core/widgets/custom_app_bar.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Payment Details'),
      body: const PaymentViewBody(),
    );
  }
}
