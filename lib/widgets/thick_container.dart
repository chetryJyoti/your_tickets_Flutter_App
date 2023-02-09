import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor1;
  const ThickContainer({super.key, this.isColor1});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: isColor1 == null ? Colors.white : const Color(0xFF8ACCF7),
              width: 2.5)),
    );
  }
}
