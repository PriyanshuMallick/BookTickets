import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Util/app_layout.dart';
import '../Util/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final bool? isColor;
  final String text1, text2;
  const AppColumnLayout({super.key, required this.text1, required this.text2, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          text1,
          style: isColor == null ? Styles.headLineStyle3_1 : Styles.headLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          text2,
          style: isColor == null ? Styles.headLineStyle4_1 : Styles.headLineStyle4,
        ),
      ],
    );
  }
}
