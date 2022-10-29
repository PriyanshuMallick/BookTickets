import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
    double cardHeight = AppLayout.getHeight(200);
    double padding = AppLayout.getHeight(16);
    const double midPartGap = 10;

    return SizedBox(
      width: size.width * 0.85,
      //   width: 200,
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
                        style: isColor == null ? Styles.headLineStyle4 : Styles.headLineStyle3,
                      ),
                      //
                      const Spacer(),
                      //
                      const ThickContainer(isColor: true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 5).floor(),
                                      (index) => SizedBox(
                                        width: AppLayout.getWidth(3),
                                        height: AppLayout.getHeight(1),
                                        child: const DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),

                            /*
                            
                            * Airplane Logo
                            
                            */

                            Center(
                              child: Transform.rotate(
                                angle: 1.571,
                                child: const Icon(
                                  Icons.local_airport,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true),
                      //
                      const Spacer(),
                      //
                      Text(
                        ticket['to']['code'],
                        style: isColor == null ? Styles.headLineStyle4 : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'], style: Styles.headLineStyle5_1),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headLineStyle5_1,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['to']['name'], textAlign: TextAlign.end, style: Styles.headLineStyle5_1),
                      ),
                    ],
                  ),
                  const Gap(midPartGap),
                ],
              ),
            ),

            /* 
            
            * Mid Part of the Card/Ticket

            */

            Container(
              color: Styles.blueColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(midPartGap * 2),
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
                      padding: const EdgeInsets.all(12.0),
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
                                child: const DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
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
                    height: AppLayout.getWidth(midPartGap * 2),
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
                  bottomLeft: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius),
                ),
                color: isColor == null ? const Color(0xFFF37b67) : Colors.white,
              ),
              padding: const EdgeInsets.only(top: 10, bottom: 16, right: 16, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['date'],
                        style: isColor == null ? Styles.headLineStyle4 : Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "DATE",
                        style: Styles.headLineStyle5_1,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ticket['departure_time'],
                        style: isColor == null ? Styles.headLineStyle4 : Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Departure Time",
                        style: Styles.headLineStyle5_1,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket['number'].toString(),
                        style: isColor == null ? Styles.headLineStyle4 : Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Number",
                        style: Styles.headLineStyle5_1,
                      ),
                    ],
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
