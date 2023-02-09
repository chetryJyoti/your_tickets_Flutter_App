import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TicketTabs(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          children: [
            //airline tickets
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child: Center(child: Text(firstText)),
            ),
            //hotels
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.transparent),
              child: Center(child: Text(secondText)),
            )
          ],
        ),
      ),
    );
  }
}
