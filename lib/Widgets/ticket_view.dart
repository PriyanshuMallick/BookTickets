import 'package:booktickets/Widgets/column_layout.dart';
import 'package:booktickets/Widgets/horizontal_break.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../Util/app_layout.dart';
import '../Util/app_styles.dart';
import '../Widgets/thick_container.dart';
// import '../Widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final bool? isColor;
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    double borderRadius = AppLayout.getHeight(21);

    // CARD HEIGHT

    double cardHeight = AppLayout.getHeight(
      isColor == null ? (GetPlatform.isAndroid == true ? 167 : 169) : (GetPlatform.isAndroid == true ? 155 : 157),
    );

    double padding = AppLayout.getHeight(16);
    const double midPartGap = 10;

    return SizedBox(
      width: size.width * 0.86,
      // width: 200,
      height: cardHeight,
      child: Container(
        margin: EdgeInsets.only(right: padding),
        child: Column(
          children: [
            /* 
            
            * Top Blue Part of the Card/Ticket

            */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                ),
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
              ),
              padding: EdgeInsets.all(padding),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null ? Styles.headLineStyle3_1 : Styles.headLineStyle3,
                      ),
                      //
                      const Spacer(),
                      //
                      // ! Small Circle
                      ThickContainer(isColor: isColor),

                      // ! Airplane and Dash
                      Expanded(
                        child: Stack(
                          children: [
                            //  <HB> dashed
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: HorizontalBreakDashed(sections: 5, isColor: isColor),
                            ),

                            /*
                            
                            * Airplane Logo
                            
                            */

                            Center(
                              child: Transform.rotate(
                                angle: 1.571,
                                child: Icon(
                                  Icons.local_airport,
                                  color: isColor == null // * Airplane Color
                                      ? Colors.white
                                      : const Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ! Small Circle
                      ThickContainer(isColor: isColor),
                      //
                      const Spacer(),
                      //
                      Text(
                        ticket['to']['code'],
                        style: isColor == null ? Styles.headLineStyle3_1 : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null ? Styles.headLineStyle4_1 : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null ? Styles.headLineStyle4_1 : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null ? Styles.headLineStyle4_1 : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                  // const Gap(midPartGap),
                ],
              ),
            ),

            /* 
            
            * Mid Part of the Card/Ticket

            */

            Container(
              color: isColor == null ? Styles.blueColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: isColor == null ? AppLayout.getHeight(midPartGap * 2) : AppLayout.getHeight(midPartGap),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: isColor == null ? const EdgeInsets.all(12) : const EdgeInsets.all(6),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: AppLayout.getWidth(5),
                                height: AppLayout.getHeight(1),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: isColor == null ? Styles.blueColor : Colors.grey.shade300, // * Dash color
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: isColor == null ? AppLayout.getHeight(midPartGap * 2) : AppLayout.getHeight(midPartGap),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /* 
            
            * Bottom Orange Part of the Card/Ticket

            */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? borderRadius : 0),
                  bottomRight: Radius.circular(isColor == null ? borderRadius : 0),
                ),
                color: isColor == null ? const Color(0xFFF37b67) : Colors.white,
              ),
              padding: EdgeInsets.only(top: 10, bottom: padding, right: padding, left: padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    text1: ticket['date'],
                    text2: "DATE",
                    alignment: CrossAxisAlignment.start,
                    isColor: isColor,
                  ),
                  AppColumnLayout(
                    text1: ticket['departure_time'],
                    text2: "Departure Time",
                    alignment: CrossAxisAlignment.center,
                    isColor: isColor,
                  ),
                  AppColumnLayout(
                    text1: ticket['number'].toString(),
                    text2: "Number",
                    alignment: CrossAxisAlignment.end,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
