import 'package:checkout_payment/features/checkout/presentation/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: SvgPicture.asset('assets/images/arrow.svg'),
          ),
        ),
      ),
      body: Transform.translate(
        offset: const Offset(0, -14),
        child: const ThankYouViewBody(),
      ),
    );
  }
}
