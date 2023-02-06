import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchFieldWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const SearchFieldWidget({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
