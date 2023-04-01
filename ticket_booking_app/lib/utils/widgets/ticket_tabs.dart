import 'package:flutter/material.dart';

import '../app_layout.dart';

class AppTicketTabs extends StatelessWidget {
   final  String leftTExt;
   final  String rightText;
  const AppTicketTabs({super.key,required this.leftTExt,required this.rightText});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.5),
      child: Row(
        children: [
          /*airline tickets*/
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: AppLayout.getWidth(175),
            child: Center(child: Text(leftTExt)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.white),
          ),
          /*hotels*/
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: AppLayout.getWidth(175),
            child: Center(child: Text(rightText)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.transparent),
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: Color(0xFFF4F6FD)),
    );
  }
}
