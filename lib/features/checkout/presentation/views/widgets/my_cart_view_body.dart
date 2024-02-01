import 'package:checkout_payment/features/checkout/data/repo/checkout_repo_imp.dart';
import 'package:checkout_payment/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'order_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Image.asset('assets/images/Group.png'),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const OrderInfoItem(title: 'Order Subtotal', value: r'$42.97'),
          const SizedBox(),
          const OrderInfoItem(title: 'Discount', value: r'$0'),
          const SizedBox(),
          const OrderInfoItem(title: 'Shipping', value: r'$8'),
          const SizedBox(),
          const Divider(
            height: 34,
            thickness: 2,
            color: Color(0xFFC6C6C6),
          ),
          const TotalPriceItem(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16.0,
          ),
          CustomButton(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  builder: (context) => BlocProvider(
                      create: (context) => PaymentCubit(
                          checkoutRepo: CheckoutRepoImplementation()),
                      child: const PaymentMethodsBottomSheet()));
            },
            text: 'Complete Payment',
          ),
          const SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
