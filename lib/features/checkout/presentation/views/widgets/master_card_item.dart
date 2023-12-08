import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';

class MasterCardItem extends StatelessWidget {
  const MasterCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 73,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      padding: const EdgeInsets.only(
        left: 23,
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/master_card.svg'),
          const SizedBox(
            width: 23,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Credit Card ',
                      style: FontStyles.fontStyleNormal18,
                    ),
                    TextSpan(
                      text: 'Mastercard **78',
                      style: FontStyles.fontStyle16.copyWith(
                        color: Colors.black.withOpacity(0.699999988079071),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
