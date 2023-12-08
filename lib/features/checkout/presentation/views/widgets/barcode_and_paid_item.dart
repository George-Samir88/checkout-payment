import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BarcodeAndPaidItem extends StatelessWidget {
  const BarcodeAndPaidItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/images/barcode.svg'),
        Container(
          width: 113,
          height: 58,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Center(
            child: Text(
              'PAID',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF34A853),
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
