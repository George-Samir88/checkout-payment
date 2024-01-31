import 'package:checkout_payment/features/checkout/data/models/payment_intent_object_input/payment_intent_object_input.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentObjectInput paymentIntentObjectInput});
}
