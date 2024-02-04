import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:checkout_payment/core/utils/api_service.dart';
import 'package:checkout_payment/features/checkout/data/models/customer/customer/customer.dart';
import 'package:checkout_payment/features/checkout/data/models/customer_ephemeral_key/customer_ephemeral_key/customer_ephemeral_key.dart';
import 'package:checkout_payment/features/checkout/data/models/payment_intent_object_input/payment_intent_object_input.dart';
import 'package:checkout_payment/features/checkout/data/models/payment_intent_object_response/payment_intent_object.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  ApiService apiService = ApiService();
  final String baseUrl = 'https://api.stripe.com';

  //this method is applied when you have complete application and for each customer logged in your app
  //this request is triggered to create customer on stripe
  Future<Customer> createCustomer(
      {required String name, required String email}) async {
    var response = await apiService.post(
      token: ApiKeys.secretKey,
      body: {
        'name': name,
        'email': email,
      },
      url: '$baseUrl/v1/customers',
    );
    Customer customer = Customer.fromJson(response.data);
    return customer;
  }

  //customer ephemeral key uses customerId retrieve cards of customer
  Future<CustomerEphemeralKey> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
      token: ApiKeys.secretKey,
      body: {
        'customer': customerId,
      },
      url: '$baseUrl/v1/ephemeral_keys',
      headers: {
        'Authorization': "Bearer ${ApiKeys.secretKey}",
        'Stripe-Version': '2023-10-16',
      },
    );
    CustomerEphemeralKey customerEphemeralKey =
        CustomerEphemeralKey.fromJson(response.data);
    return customerEphemeralKey;
  }

  Future<PaymentIntentObject> createPaymentIntent(
      {required PaymentIntentObjectInput paymentIntentObjectInput}) async {
    var response = await apiService.post(
        token: ApiKeys.secretKey,
        body: paymentIntentObjectInput.toJson(),
        url: '$baseUrl/v1/payment_intents');
    PaymentIntentObject paymentIntentObject =
        PaymentIntentObject.fromJson(response.data);
    return paymentIntentObject;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'George samir',
        paymentIntentClientSecret: paymentIntentClientSecret,
      ),
    );
  }

  Future presentPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future integratePaymentProcessSteps(
      {required PaymentIntentObjectInput paymentIntentObjectInput}) async {
    PaymentIntentObject paymentIntentObject = await createPaymentIntent(
        paymentIntentObjectInput: paymentIntentObjectInput);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentObject.clientSecret!);
    await presentPaymentSheet();
  }
}
