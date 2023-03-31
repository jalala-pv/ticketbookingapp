import 'package:flutter/material.dart';

import '../app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String BigText;
   final String SmallText;
  const AppDoubleTextWidget({super.key,required this.BigText,required this.SmallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         BigText,
          style: Styles.headlineStyle2,
        ),
        InkWell(
            onTap: () {
              print('You are tapped');
            },
            child: Text(
              SmallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            ))
      ],
    );
  }
}
