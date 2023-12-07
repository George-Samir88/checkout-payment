import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        20,
        //expanded widget to add stable width to container
        (index) => Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            height: 2,
            decoration: BoxDecoration(
                color: const Color(0xFFB7B7B7),
                borderRadius: BorderRadius.circular(16)),
          ),
        ),
      ),
    );
  }
}
