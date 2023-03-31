import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

import '../app_layout.dart';
class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key,required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return      Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
          ),
          child: Row(
            
            children: [
              Icon(icon,color: Color(0xFFBFC2DF),),
                 Gap(AppLayout.getWidth(10)),
              Text(text,style: Styles.textStyle,),
            ],
          ),
        );
  }
}