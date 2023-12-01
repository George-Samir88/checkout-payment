import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class TotalPriceItem extends StatelessWidget {
  const TotalPriceItem({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: FontStyles.fontStyle24,
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: FontStyles.fontStyle24,
        ),
      ],
    );
  }
}
