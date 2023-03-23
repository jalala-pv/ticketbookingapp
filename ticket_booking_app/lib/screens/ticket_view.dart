import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
   final size=AppLayout.getSize(context); 
    return SizedBox(
      width:size.width ,
      height:200,
      child: Container(
        child: Column(
          children: [
            Container(
              child: Row(children: [
                
              ]),
            )

          ],
        ),
      ),
    );
  }
}