import 'package:checkout_payment/features/checkout/data/models/payment_intent_object_input/payment_intent_object_input.dart';
import 'package:checkout_payment/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:checkout_payment/features/checkout/presentation/manager/payment_state.dart';
import 'package:checkout_payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const ThankYouView()));
        }
        if (state is PaymentFailure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error)));
        }
      },
      builder: (context, state) {
        return CustomButton(
          onTap: () {
            PaymentIntentObjectInput paymentIntentObjectInput =
                PaymentIntentObjectInput(amount: '100'+'00', currency: 'USD');
            BlocProvider.of<PaymentCubit>(context).makePayment(
                paymentIntentObjectInput: paymentIntentObjectInput);
          },
          text: 'Continue',
          isLoading: state is PaymentLoading ? true : false,
        );
      },
    );
  }
}
