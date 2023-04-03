import 'package:flutter/material.dart';

import '../app_layout.dart';
class linebuild extends StatelessWidget {
  final bool? isColor;
  final double lines;
  const linebuild({super.key,this.isColor,required this.lines});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / lines).floor(),
            (index) => SizedBox(
              width: AppLayout.getWidth(3),
              height: AppLayout.getHeight(1),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor == null
                          ? Colors.white
                          : Colors.grey.shade600)),
            ),
          ),
        );
      },
    );
  }
}