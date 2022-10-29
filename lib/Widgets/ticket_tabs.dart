import 'package:flutter/material.dart';

import '../Util/app_layout.dart';

class AppTicketTab extends StatelessWidget {
  final String tab1, tab2;
  const AppTicketTab({super.key, required this.tab1, required this.tab2});

  @override
  Widget build(BuildContext context) {
    var size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD),
        ),
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            /*
                  *    Tab 1
                  */
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.white,
              ),
              child: Center(
                child: Text(tab1),
              ),
            ),

            /*
                  *    Tab 2
                  */
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(tab2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
