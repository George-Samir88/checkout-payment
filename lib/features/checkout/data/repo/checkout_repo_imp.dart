import 'package:checkout_payment/core/errors/failure.dart';
import 'package:checkout_payment/core/utils/stripe_service.dart';
import 'package:checkout_payment/features/checkout/data/models/payment_intent_object_input/payment_intent_object_input.dart';
import 'package:checkout_payment/features/checkout/data/repo/checkout_repo.dart';
import 'package:dartz/dartz.dart';

class CheckoutRepoImplementation extends CheckoutRepo {
  final StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentObjectInput paymentIntentObjectInput}) async {
    try {
      await stripeService.integratePaymentProcessSteps(
          paymentIntentObjectInput: paymentIntentObjectInput);
      return right(null);
    } catch (error) {
      return left(ServerFailure(error: error.toString()));
    }
  }
}
