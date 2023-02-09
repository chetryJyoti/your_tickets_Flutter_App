import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String txtOne;
  final String txtTwo;
  final bool? isColor;
  const AppColumnLayout(
      {super.key,
      required this.txtOne,
      required this.txtTwo,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          txtOne,
          style: isColor == null
              ? Styles.headlineStyle3.copyWith(color: Colors.white)
              : Styles.headlineStyle3.copyWith(color: Colors.black),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          txtTwo,
          style: isColor == null
              ? Styles.headlineStyle4.copyWith(color: Colors.white)
              : Styles.headlineStyle4,
        )
      ],
    );
  }
}
