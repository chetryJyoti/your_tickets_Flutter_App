import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:your_tickets/utils/app_layout.dart';
import 'package:your_tickets/utils/app_styles.dart';
import 'package:your_tickets/widgets/colum_layout.dart';
import 'package:your_tickets/widgets/layout_builder_widget.dart';
import 'package:your_tickets/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      // height: AppLayout.getHeight(164),
      child: Container(
        // color: Colors.green,
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          // showing the blue part of the ticket
          Container(
            decoration: BoxDecoration(
              color: isColor == null ? const Color(0xFF526799) : Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21))),
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(16)),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    ticket["from"]["code"],
                    style: isColor == null
                        ? Styles.headlineStyle3.copyWith(color: Colors.white)
                        : Styles.headlineStyle3.copyWith(color: Colors.black),
                  ),
                  const Spacer(),
                  ThickContainer(
                    isColor1: isColor,
                  ),
                  Expanded(
                    child: Stack(children: [
                      SizedBox(
                        height: AppLayout.getHeight(24),
                        child:const AppLayoutBuilderWidget(sections:7)
                      ),
                      Center(
                        child: Transform.rotate(
                            angle: 1.6,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null
                                  ? Colors.white
                                  : const Color(0xFF8ACCF7),
                            )),
                      ),
                    ]),
                  ),
                  ThickContainer(
                    isColor1: isColor,
                  ),
                  const Spacer(),
                  Text(
                    ticket["to"]["code"],
                    style: isColor == null
                        ? Styles.headlineStyle3.copyWith(color: Colors.white)
                        : Styles.headlineStyle3.copyWith(color: Colors.black),
                  )
                ],
              ),
              const Gap(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppLayout.getWidth(100),
                    child: (Text(
                      ticket["from"]["name"],
                      style: isColor == null
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                    )),
                  ),
                  Text(ticket["flying_time"],
                      style: isColor == null
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4
                              .copyWith(color: Colors.black)),
                  SizedBox(
                    width: AppLayout.getWidth(100),
                    child: (Text(
                      ticket["to"]["name"],
                      style: isColor == null
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                      textAlign: TextAlign.end,
                    )),
                  ),
                ],
              )
            ]),
          )
          // for showing the middle orange part of the ticket
          ,
          Container(
            color: isColor == null ? Styles.orangeColor : Colors.white,
            child: Row(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(10)),
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(10)))),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(10)),
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (index) => SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.grey.shade300)),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(10)))),
                  ),
                )
              ],
            ),
          ),
          // bottom part of the ticket
          Container(
            decoration: BoxDecoration(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      AppLayout.getHeight(isColor == null ? 21 : 0)),
                  bottomRight: Radius.circular(
                      AppLayout.getHeight(isColor == null ? 21 : 0))),
            ),
            padding:
                const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //using reusable component
                    AppColumnLayout(
                        txtOne: ticket["date"],
                        txtTwo: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor)
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text(
                    //       ticket["date"],
                    //       style: isColor == null
                    //           ? Styles.headlineStyle3
                    //               .copyWith(color: Colors.white)
                    //           : Styles.headlineStyle3
                    //               .copyWith(color: Colors.black),
                    //     ),
                    //     const Gap(6),
                    //     Text(
                    //       "Date",
                    //       style: isColor == null
                    //           ? Styles.headlineStyle4
                    //               .copyWith(color: Colors.white)
                    //           : Styles.headlineStyle4,
                    //     )
                    //   ],
                    // ),
                    ,
                    AppColumnLayout(
                        txtOne: ticket["departure_time"],
                        txtTwo: "Departure Time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       ticket["departure_time"],
                    //       style: isColor == null
                    //           ? Styles.headlineStyle3
                    //               .copyWith(color: Colors.white)
                    //           : Styles.headlineStyle3
                    //               .copyWith(color: Colors.black),
                    //     ),
                    //     const Gap(6),
                    //     Text(
                    //       "Departure Time",
                    //       style: isColor == null
                    //           ? Styles.headlineStyle4
                    //               .copyWith(color: Colors.white)
                    //           : Styles.headlineStyle4,
                    //     )
                    //   ],
                    // ),
                    AppColumnLayout(
                        txtOne: ticket["number"].toString(),
                        txtTwo: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.end,
                    //   children: [
                    //     Text(
                    //       ticket["number"].toString(),
                    //       style: isColor == null
                    //           ? Styles.headlineStyle3
                    //               .copyWith(color: Colors.white)
                    //           : Styles.headlineStyle3
                    //               .copyWith(color: Colors.black),
                    //     ),
                    //     const Gap(6),
                    //     Text(
                    //       "Number",
                    //       style: isColor == null
                    //           ? Styles.headlineStyle4
                    //               .copyWith(color: Colors.white)
                    //           : Styles.headlineStyle4,
                    //     )
                    //   ],
                    // )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
