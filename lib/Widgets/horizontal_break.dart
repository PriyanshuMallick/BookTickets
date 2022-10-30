import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Util/app_layout.dart';

class HorizontalBreakDashed extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const HorizontalBreakDashed({super.key, this.isColor, required this.sections});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: AppLayout.getWidth(3),
              height: AppLayout.getHeight(1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == null // * Dash Color
                      ? Colors.white
                      : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
