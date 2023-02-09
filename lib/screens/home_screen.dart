import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:your_tickets/screens/hotel_screen.dart';
import 'package:your_tickets/screens/ticket_view.dart';
import 'package:your_tickets/utils/app_info_list.dart';
import 'package:your_tickets/utils/app_layout.dart';
import 'package:your_tickets/widgets/double_text_widget.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            //upper part
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25)),
              child: Column(
                children: [
                  const Gap(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning", style: Styles.headlineStyle3),
                          const Gap(5),
                          Text(
                            "Book Tickets",
                            style: Styles.headlineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/images/img_1.png"))),
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text(
                          "Search",
                          style: Styles.headlineStyle4,
                        )
                      ],
                    ),
                  ),
                  const Gap(40),
                  const DoubleTextWidget(
                      bigText: "Upcoming Flights", smallText: "View all")
                ],
              ),
            ),
            const Gap(15),
            //ticket part
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: ticketList
                      .map((singleTicket) => TicketView(ticket: singleTicket))
                      .toList()),
            ),
            const Gap(30),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const DoubleTextWidget(
                    bigText: "Hotels", smallText: "View all")),
            const Gap(15),
            //hotels nearby part
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                  children: hotelList
                      .map((singleHotel) => HotelScreen(hotel: singleHotel))
                      .toList()),
            ),
            const Gap(10)
          ],
        ));
  }
}
