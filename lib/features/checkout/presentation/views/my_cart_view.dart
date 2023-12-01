import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Center(child: SvgPicture.asset('assets/images/arrow.svg')),
        title: const Text(

          'My Cart',
          textAlign: TextAlign.center,
          style: FontStyles.fontStyle25,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}
