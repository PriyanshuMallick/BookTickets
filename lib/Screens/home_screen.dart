import 'package:booktickets/Screens/hotel_view.dart';
import 'package:booktickets/Screens/ticket_view.dart';
import 'package:booktickets/Util/app_info_list.dart';
import 'package:booktickets/Util/app_layout.dart';
import 'package:booktickets/Util/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const double sidePadding = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          //* Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: sidePadding),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /*

                      * Header Text and Logo
                      
                    */

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        //
                        const Gap(5),
                        //
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/img_1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                /* 
                


                */
                //* Search Area
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  //
                  //
                  // * Search Icon
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      const Gap(10),
                      Text(
                        "Search",
                        style: Styles.headLineStyle5,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                //* Upcoming Flights Area
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print("You tap on the thing");
                      },
                      child: Text(
                        "View all",
                        style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          //* Upcoming Flights Card
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: sidePadding),
            child: Row(children: ticketList.map((ticket) => TicketView(ticket: ticket)).toList()),
          ),
          const Gap(15),
          //* Hotels Text
          Container(
            padding: const EdgeInsets.symmetric(horizontal: sidePadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print("You tap on the thing");
                  },
                  child: Text(
                    "View all",
                    style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ),
          const Gap(15),
          //* Hotels Card
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: sidePadding),
            child: Row(
              children: hotelList.map((hotel) => HotelView(hotel: hotel)).toList(),
            ),
          ),
          const Gap(15),
        ],
      ),
    );
  }
}
