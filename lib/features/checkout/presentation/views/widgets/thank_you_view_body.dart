import 'package:flutter/material.dart';

//custom painter allowed
class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 20,
        right: 20,
        left: 20,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: Container(
              width: 40,
              height: 40,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: Container(
              width: 40,
              height: 40,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
              ),
            ),
          ),
          const Positioned(
            top: -50,
            right: 0,
            left: 0,
            child: CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              radius: 50,
            ),
          ),
          const Positioned(
            top: -40,
            right: 0,
            left: 0,
            child: CircleAvatar(
              backgroundColor: Color(0xFF34A853),
              radius: 40,
              child: Icon(
                Icons.check,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            //padding to the same padding of circle + 0.5 radius
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            //fixed width to row and padding 20 pixel to the same screen and 8 pixels to the internal container
            left: 28,
            right: 28,
            child: Row(
              children: List.generate(
                20,
                //expanded widget to add stable width
                (index) => Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    height: 2,
                    decoration: BoxDecoration(
                        color: const Color(0xFFB7B7B7),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
