import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/styles.dart';

AppBar customAppBar(
    {required String title,
    required BuildContext context,
    required bool isFirstViewOfApp}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        if (!isFirstViewOfApp) {
          Navigator.pop(context);
        }
      },
      child: Center(
        child: SvgPicture.asset('assets/images/arrow.svg'),
      ),
    ),
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: FontStyles.fontStyle25,
    ),
  );
}
