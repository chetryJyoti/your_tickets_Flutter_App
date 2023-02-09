import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:your_tickets/screens/ticket_view.dart';
import 'package:your_tickets/utils/app_info_list.dart';
import 'package:your_tickets/widgets/colum_layout.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(50)),
            Text(
              "Tickets",
              style: Styles.headlineStyle1.copyWith(fontSize: 35),
            ),
            Gap(AppLayout.getHeight(20)),
            const TicketTabs(
              firstText: "Upcoming",
              secondText: "Previous",
            ),
            Gap(AppLayout.getHeight(22)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 16),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        txtOne: "Flutter Db",
                        txtTwo: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        txtOne: "123563421",
                        txtTwo: "Passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
