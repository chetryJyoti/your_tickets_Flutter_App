import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:your_tickets/utils/app_layout.dart';
import 'package:your_tickets/utils/app_styles.dart';
import 'package:your_tickets/widgets/double_text_widget.dart';
import 'package:your_tickets/widgets/search_field_widget.dart';

import '../widgets/ticket_tabs.dart';

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
            const TicketTabs(
              firstText: "Airline Ticket",
              secondText: "Hotels",
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
            ),
            Gap(AppLayout.getHeight(40)),
            const DoubleTextWidget(
                bigText: "Upcoming Flights", smallText: "View all"),
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                Container(
                  height: AppLayout.getHeight(419),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getHeight(15)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                  ),
                  child: Column(children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(20)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"))),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% dicount on the early booking of this flight.Don't miss. ",
                      style: Styles.headlineStyle2,
                    )
                  ]),
                ),
                //right side
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(194),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(20))),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15),
                              horizontal: AppLayout.getHeight(15)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discount\nfor survey",
                                  style: Styles.headlineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Gap(AppLayout.getHeight(10)),
                                Text(
                                  "Take the survey about servixes and get a discount",
                                  style: Styles.headlineStyle2.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              ]),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getHeight(15)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                          color: const Color(0xFFEC6545)),
                      child: Column(
                        children: [
                          Text(
                            "Take love",
                            style: Styles.headlineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Gap(AppLayout.getHeight(15)),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 20)),
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 40)),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 20),
                            )
                          ]))
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
