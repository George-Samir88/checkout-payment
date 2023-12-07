import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomPaymentDetailsItem extends StatelessWidget {
  const CustomPaymentDetailsItem(
      {super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: FontStyles.fontStyleNormal18,
        ),
        Text(
          value,
          style: FontStyles.fontStyleSemiBold18,
        ),
      ],
    );
  }
}
