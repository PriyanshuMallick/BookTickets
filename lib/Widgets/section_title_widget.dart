import 'package:flutter/material.dart';
import '../Util/app_styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String menuTitle;
  const SectionTitle({Key? key, required this.title, required this.menuTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print("You tap on 'View All'");
          },
          child: Text(
            menuTitle,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
