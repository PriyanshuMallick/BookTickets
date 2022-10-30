import 'package:booktickets/Widgets/column_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Util/app_styles.dart';
import '../Util/app_info_list.dart';
import '../UI_Widgets/ticket_view.dart';
import '../Widgets/ticket_tabs.dart';
import '../Util/app_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
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
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                color: Colors.white,
                child: Column(
                  children: [
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
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}



// 4:57:49
