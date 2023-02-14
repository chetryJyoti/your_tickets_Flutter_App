import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:your_tickets/screens/ticket_view.dart';
import 'package:your_tickets/utils/app_info_list.dart';
import 'package:your_tickets/widgets/colum_layout.dart';
import 'package:your_tickets/widgets/layout_builder_widget.dart';

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
              color: Colors.white,
              margin: const EdgeInsets.only(left: 15, right: 16),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                        txtOne: "12356343421",
                        txtTwo: "Passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  const Gap(15),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        txtOne: "0063267541238",
                        txtTwo: "No. of E-Ticket",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        txtOne: "B2HDF92",
                        txtTwo: "Booking Code",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/visa.png",
                                scale: 11,
                              ),
                              Text(
                                "***7239",
                                style: Styles.headlineStyle3
                                    .copyWith(color: Colors.black),
                              )
                            ],
                          ),
                          const Gap(5),
                          Text(
                            "Payment method",
                            style: Styles.headlineStyle4,
                          )
                        ],
                      ),
                      const AppColumnLayout(
                        txtOne: "\$248397",
                        txtTwo: "Price",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(20)),
                      bottomRight: Radius.circular(AppLayout.getHeight(20)))),
              margin: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                  right: AppLayout.getHeight(16)),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(15),
                  bottom: AppLayout.getHeight(15)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: "https://github.com/martinovovo",
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0]),
            )
          ],
        ),
      ]),
    );
  }
}
