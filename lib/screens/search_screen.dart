import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:your_tickets/utils/app_layout.dart';
import 'package:your_tickets/utils/app_styles.dart';
import 'package:your_tickets/widgets/search_field_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(50)),
            Text(
              "What are\nyou looking for?",
              style: Styles.headlineStyle1.copyWith(fontSize: 35),
            ),
            Gap(AppLayout.getHeight(20)),
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(50)),
                    color: const Color(0xFFF4F6FD)),
                child: Row(
                  children: [
                    //airline tickets
                    Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.white),
                      child: const Center(child: Text("Airline tickets")),
                    ),
                    //hotels
                    Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(10)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.transparent),
                      child: const Center(child: Text("Hotels")),
                    )
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            const SearchFieldWidget(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(25)),
            const SearchFieldWidget(
                icon: Icons.flight_land_rounded, text: "Arrival"),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                  color: const Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
