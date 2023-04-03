import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../app_layout.dart';
import '../app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final bool? isColor;
  final String firsttext;
  final String secondtext;
  final CrossAxisAlignment alignment;
  const AppColumnLayout(
      {super.key,
      required this.firsttext,
      required this.secondtext,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firsttext,
          style: isColor == null
              ? Styles.headlineStyle3.copyWith(color: Colors.white)
              : Styles.headlineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondtext,
          style: isColor == null
              ? Styles.headlineStyle4.copyWith(color: Colors.white)
              : Styles.headlineStyle4,
        ),
      ],
    );
  }
}
