import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/Widgets/column_layout.dart';
import 'package:booktickets/Widgets/horizontal_break.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Util/app_styles.dart';
import '../Util/app_info_list.dart';
import '../Widgets/ticket_tabs.dart';
import '../Util/app_layout.dart';
import '../Widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              //   vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),

              // ! Heading

              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),

              Gap(AppLayout.getHeight(20)),

              //! App Tab

              const AppTicketTab(tab1: "Upcoming", tab2: 'Previous'),

              Gap(AppLayout.getHeight(20)),

              // ! Ticket Card

              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),

              // Horizontal Break
              const SizedBox(height: 1),

              // !

              Container(
                // width: size.width * 0.85,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(20)),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    // ? 1st Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AppColumnLayout(
                          text1: 'Flutter DB',
                          text2: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        Gap(AppLayout.getHeight(10)),
                        const AppColumnLayout(
                          text1: '5221 364869',
                          text2: 'passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    //
                    const HorizontalBreakDashed(sections: 15, isColor: false, width: 5),
                    //
                    Gap(AppLayout.getHeight(20)),

                    //? 2nd Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AppColumnLayout(
                          text1: '0055 444 77147',
                          text2: 'Number of E-Ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        Gap(AppLayout.getHeight(10)),
                        const AppColumnLayout(
                          text1: 'B2sG28',
                          text2: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    //
                    const HorizontalBreakDashed(sections: 15, isColor: false, width: 5),
                    //
                    Gap(AppLayout.getHeight(20)),

                    //? VISA Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ? VISA and Text
                        Column(
                          children: [
                            // ? VISA
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 2462',
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),

                        const AppColumnLayout(
                          text1: '\$249.99',
                          text2: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ), // Horizontal Break
                    //
                    const SizedBox(height: 1),
                  ],
                ),
              ),

              //
              const SizedBox(height: 1),
              //

              //? BAR-Code

              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor1,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),

              Gap(AppLayout.getHeight(20)),

              // ? Ticket Card

              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(ticket: ticketList[0]),
              ),

              Gap(AppLayout.getHeight(20)),
            ],
          ),
        ],
      ),
    );
  }
}
