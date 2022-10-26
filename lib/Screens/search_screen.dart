import 'package:booktickets/Util/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../Util/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
        ],
      ),
    );
  }
}
