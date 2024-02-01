import 'package:flutter/material.dart';

@immutable
abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentSuccess extends PaymentState {}

class PaymentLoading extends PaymentState {}

class PaymentFailure extends PaymentState {
  final String error;

  PaymentFailure({required this.error});
}
