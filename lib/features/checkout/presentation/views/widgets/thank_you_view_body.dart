import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_oval_circle.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/thank_view_card.dart';
import 'package:flutter/material.dart';

import 'custom_circle_check_container.dart';
import 'custom_circle_container.dart';
import 'custom_dashed_line.dart';

//custom painter allowed
class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
        right: 20,
        left: 20,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankViewCard(),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.18,
            child: const CustomOvalContainer(),
          ),
          Positioned(
            //padding to 0.5 radius of the circle
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.18,
            child: const CustomOvalContainer(),
          ),
          const Positioned(
            top: -50,
            right: 0,
            left: 0,
            child: CustomCircleContainer(),
          ),
          const Positioned(
            top: -40,
            right: 0,
            left: 0,
            child: CustomCircleCheckContainer(),
          ),
          Positioned(
            //vertical padding to the same padding of circle + radius (0.5 width)
            bottom: MediaQuery.sizeOf(context).height * 0.18 + 20,
            //horizontal fixed width to row and padding 20 pixel to the same screen and 8 pixels to the internal container
            left: 28,
            right: 28,
            child: const CustomDashedLine(),
          ),
        ],
      ),
    );
  }
}
