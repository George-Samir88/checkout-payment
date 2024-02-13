// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:checkout_payment/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:checkout_payment/features/checkout/presentation/manager/payment_state.dart';
import 'package:checkout_payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../data/models/amount_model/amount_model.dart';
import '../../../data/models/amount_model/details.dart';
import '../../../data/models/item_list_model/item.dart';
import '../../../data/models/item_list_model/item_list.dart';

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
            //code for stripe payment
            /*PaymentIntentObjectInput paymentIntentObjectInput =
                PaymentIntentObjectInput(
                    // ignore: prefer_adjacent_string_concatenation
                    amount: '100' + '00',
                    currency: 'USD',
                    customerId: 'cus_PV6yJXptOWfzrw');
            BlocProvider.of<PaymentCubit>(context).makePayment(
                paymentIntentObjectInput: paymentIntentObjectInput);*/
            //code for paypal payment
            //amount object
            AmountModel amountModel = AmountModel(
              total: "100",
              currency: "USD",
              details:
                  Details(subtotal: "100", shipping: "0", shippingDiscount: 0),
            );
            //item list object
            ItemList itemList = ItemList(
              items: [
                Item(
                  name: "Apple",
                  quantity: 4,
                  price: "10",
                  currency: "USD",
                ),
                Item(
                  name: "Pineapple",
                  quantity: 5,
                  price: "12",
                  currency: "USD",
                ),
              ],
            );
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: "YOUR CLIENT ID",
                secretKey: "YOUR SECRET KEY",
                transactions: [
                  {
                    "amount": amountModel.toJson(),
                    "description": "The payment transaction description.",
                    "item_list": itemList.toJson()
                  }
                ],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) async {
                  log("onSuccess: $params");
                  Navigator.pop(context);
                },
                onError: (error) {
                  log("onError: $error");
                  Navigator.pop(context);
                },
                onCancel: () {
                  print('cancelled:');
                  Navigator.pop(context);
                },
              ),
            ));
          },
          text: 'Continue',
          isLoading: state is PaymentLoading ? true : false,
        );
      },
    );
  }
}
