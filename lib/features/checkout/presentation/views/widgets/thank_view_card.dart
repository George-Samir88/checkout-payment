import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_item.dart';
import 'package:flutter/material.dart';

import 'barcode_and_paid_item.dart';
import 'custom_payment_details_item.dart';
import 'custom_separator_line.dart';
import 'master_card_item.dart';

class ThankViewCard extends StatelessWidget {
  const ThankViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 50 + 16,
        left: 22,
        right: 22,
      ),
      child: Column(
        children: [
          const Text(
            'Thank you!',
            textAlign: TextAlign.center,
            style: FontStyles.fontStyle25,
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            'Your transaction was successful',
            textAlign: TextAlign.center,
            style: FontStyles.fontStyle20,
          ),
          const SizedBox(
            height: 42,
          ),
          const CustomPaymentDetailsItem(
            title: 'Date',
            value: '01/24/2023',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPaymentDetailsItem(
            title: 'Time',
            value: '10:15 AM',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPaymentDetailsItem(
            title: 'To',
            value: 'Sam Louis',
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomSeparatorLine(),
          const SizedBox(
            height: 24,
          ),
          const TotalPriceItem(
            title: 'Total',
            value: r'$50.97',
          ),
          const SizedBox(
            height: 20,
          ),
          const MasterCardItem(),
          const Spacer(),
          const BarcodeAndPaidItem(),
          SizedBox(
            height: (MediaQuery.sizeOf(context).height * 0.2 + 20) * 0.5 - 29,
          ),
        ],
      ),
    );
  }
}
