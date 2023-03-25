import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/utils/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width,
      height: 200,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  'NYC',
                  style: Styles.headlineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                ThickContainer(),
                Expanded(
                    child: SizedBox(
                  height: 24,
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      print('the width ${constraints.constrainWidth()}');
                      return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(5, (index) => Text('-')));
                    },
                  ),
                )),
                ThickContainer(),
                Expanded(child: Container()),
                Text(
                  'LDN',
                  style: Styles.headlineStyle3.copyWith(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
