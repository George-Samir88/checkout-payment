import 'package:flutter/material.dart';

class CustomOvalContainer extends StatelessWidget {
  const CustomOvalContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: OvalBorder(),
      ),
    );
  }
}
