import 'package:flutter/material.dart';

class CustomSeparatorLine extends StatelessWidget {
  const CustomSeparatorLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFC6C6C6),
          ),
        ),
      ),
    );
  }
}
