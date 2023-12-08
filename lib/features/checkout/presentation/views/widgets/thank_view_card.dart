import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_item.dart';
import 'package:flutter/material.dart';

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
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 50 + 16,
        left: 22,
        right: 22,
      ),
      child: const Column(
        children: [
          Text(
            'Thank you!',
            textAlign: TextAlign.center,
            style: FontStyles.fontStyle25,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Your transaction was successful',
            textAlign: TextAlign.center,
            style: FontStyles.fontStyle20,
          ),
          SizedBox(
            height: 42,
          ),
          CustomPaymentDetailsItem(
            title: 'Date',
            value: '01/24/2023',
          ),
          SizedBox(
            height: 20,
          ),
          CustomPaymentDetailsItem(
            title: 'Time',
            value: '10:15 AM',
          ),
          SizedBox(
            height: 20,
          ),
          CustomPaymentDetailsItem(
            title: 'To',
            value: 'Sam Louis',
          ),
          SizedBox(
            height: 30,
          ),
          CustomSeparatorLine(),
          SizedBox(
            height: 24,
          ),
          TotalPriceItem(
            title: 'Total',
            value: r'$50.97',
          ),
          SizedBox(
            height: 30,
          ),
          MasterCardItem(),
        ],
      ),
    );
  }
}
