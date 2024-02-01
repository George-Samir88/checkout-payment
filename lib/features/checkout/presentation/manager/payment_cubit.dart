import 'dart:developer';

import 'package:checkout_payment/features/checkout/data/models/payment_intent_object_input/payment_intent_object_input.dart';
import 'package:checkout_payment/features/checkout/data/repo/checkout_repo.dart';
import 'package:checkout_payment/features/checkout/presentation/manager/payment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit({required this.checkoutRepo}) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future makePayment(
      {required PaymentIntentObjectInput paymentIntentObjectInput}) async {
    emit(PaymentLoading());
    var response = await checkoutRepo.makePayment(
        paymentIntentObjectInput: paymentIntentObjectInput);
    response.fold((failure) => emit(PaymentFailure(error: failure.error)),
        (success) => emit(PaymentSuccess()));
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
