import 'package:booktickets/Widgets/column_layout.dart';
import 'package:booktickets/Widgets/horizontal_break.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Util/app_layout.dart';
import '../Util/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          // vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),

          // ? Header
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ? App ICON
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),
                  ),
                ),
                // child: ,
              ),

              Gap(AppLayout.getHeight(10)),

              // ? Book Tickets
              // ?     &&
              // ? Shield Icon

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: Styles.headLineStyle1),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    'New-York',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(8)),

                  //? Shield Icon && Text: Premium Status

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(3), vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        //? Shield Icon
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),

                        Gap(AppLayout.getHeight(5)),

                        //? Text: Premium Status
                        const Text(
                          'Premium status',
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // ? Edit button
              Column(
                children: [
                  Gap(AppLayout.getHeight(3)),
                  InkWell(
                    onTap: () {
                      print('You Tapped Edit');
                    },
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 15,
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),

          Gap(AppLayout.getHeight(8)),

          Divider(color: Colors.grey.shade300),

          Gap(AppLayout.getHeight(8)),

          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: AppLayout.getWidth(18), color: const Color(0xFF264CD2)),
                  ),
                ),
              ),

              // ?
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(25), vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ? Bulb Icon
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),

                    Gap(AppLayout.getWidth(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'v got a new award',
                          style: Styles.headLineStyle2_1.copyWith(color: Colors.white),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(.9),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),

          Gap(AppLayout.getHeight(25)),

          // ? Accumulated miles Header
          Text('Accumulated miles', style: Styles.headLineStyle2),
          Gap(AppLayout.getHeight(15)),

          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(20)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 7,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
              children: [
                // ? Number
                Text(
                  '192802',
                  style: Styles.headLineStyle1.copyWith(fontSize: 45),
                ),
                Gap(AppLayout.getHeight(20)),

                // ? Titles
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '23 May 2021',
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),

                Divider(color: Colors.grey.shade300),
                Gap(AppLayout.getHeight(4)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                        text1: '23 042', text2: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    AppColumnLayout(
                        text1: 'Airline CO', text2: 'Recived from', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                ),

                Gap(AppLayout.getHeight(12)),
                const HorizontalBreakDashed(sections: 12, isColor: false),
                Gap(AppLayout.getHeight(12)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(text1: '24', text2: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    AppColumnLayout(
                        text1: 'McDoanal\'s', text2: 'Recived from', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                ),

                Gap(AppLayout.getHeight(12)),
                const HorizontalBreakDashed(sections: 12, isColor: false),
                Gap(AppLayout.getHeight(12)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(text1: '5234', text2: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    AppColumnLayout(
                        text1: 'Exuma', text2: 'Recived from', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                ),

                Gap(AppLayout.getHeight(12)),
                const HorizontalBreakDashed(sections: 12, isColor: false),
                Gap(AppLayout.getHeight(12)),

                InkWell(
                  onTap: () => print('You tapped on : "How to get more miles"'),
                  child: Text(
                    'How to get more miles',
                    style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
