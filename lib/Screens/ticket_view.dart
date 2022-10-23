import 'package:booktickets/Util/app_layout.dart';
import 'package:booktickets/Util/app_styles.dart';
import 'package:booktickets/Widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    const double borderRadius = 21;
    const double cardHeight = 200;
    const double midPartGap = 10;

    return SizedBox(
      width: size.width * 0.85,
      //   width: 200,
      height: cardHeight,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /* 
            
            * Top Blue Part of the Card/Ticket

            */
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                ),
                color: Color(0xFF526799),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headLineStyle4,
                      ),
                      //
                      const Spacer(),
                      //
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 5).floor(),
                                      (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
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
                      const ThickContainer(),
                      //
                      const Spacer(),
                      //
                      Text(
                        "LDN",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('New-York', style: Styles.headLineStyle5_1),
                      ),
                      Text(
                        "BH 30M",
                        style: Styles.headLineStyle5_1,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text('London', textAlign: TextAlign.end, style: Styles.headLineStyle5_1),
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
                  const SizedBox(
                    height: midPartGap * 2,
                    width: 10,
                    child: DecoratedBox(
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
                              (index) => const SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
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
                  const SizedBox(
                    height: midPartGap * 2,
                    width: 10,
                    child: DecoratedBox(
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius),
                ),
                color: Color(0xFFF37b67),
              ),
              padding: const EdgeInsets.only(top: 10, bottom: 16, right: 16, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 MAY",
                        style: Styles.headLineStyle4,
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
                        "08:00 AM",
                        style: Styles.headLineStyle4,
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
                        "23",
                        style: Styles.headLineStyle4,
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
