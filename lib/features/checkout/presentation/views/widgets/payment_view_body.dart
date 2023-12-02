import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 103,
          height: 62,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                //belong to the color of the internal box
                color: Color(0xFF34A853),
                //belong to the blur of the internal box
                blurRadius: 4,
                //the same but the offset is the dimension with regards to x and y dimension
                offset: Offset(0, 0),
                //radius of the internal box
                spreadRadius: 0,
              )
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
                child:
                    SvgPicture.asset('assets/images/credit.svg', height: 32)),
          ),
        ),
      ],
    );
  }
}
