import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/utils/widgets/thick_container.dart';

import '../utils/widgets/Column_Layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.85,
      height: AppLayout.getHeight(175),
      padding: EdgeInsets.only(
        right: AppLayout.getWidth(15),
      ),
      child: Column(
        children: [
          /*shows the blue part of the card*/
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(10)),
                    topRight: Radius.circular(AppLayout.getHeight(10)))),
            padding: EdgeInsets.all(AppLayout.getHeight(20)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: isColor == null
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3,
                    ),
                    Expanded(child: Container()),
                    ThickContainer(
                      isColor: isColor,
                    ),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                          height: AppLayout.getHeight(24),
                          child: linebuild(6, isColor)),
                      Center(
                        child: Transform.rotate(
                          angle: AppLayout.getHeight(1.5),
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: isColor == null
                                ? Colors.white
                                : Color(0xFF8ACCF7),
                          ),
                        ),
                      ),
                    ])),
                    ThickContainer(
                      isColor: isColor,
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['to']['code'],
                      style: isColor == null
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3,
                    ),
                  ],
                ),
                Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket['from']['name'],
                      style: isColor == null
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                    ),
                    Text(
                      ticket['flying_time'],
                      style: isColor == null
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3,
                    ),
                    Text(
                      ticket['to']['name'],
                      style: isColor == null
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                    )
                  ],
                )
              ],
            ),
          ),
          /* 
        shows the orange part of the card
       */
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white),
            child: Row(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(15),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(10))))),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12)),
                    child: linebuild(AppLayout.getHeight(15), isColor),
                  ),
                ),
                SizedBox(
                  height: AppLayout.getHeight(15),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeight(10)),
                              bottomLeft:
                                  Radius.circular(AppLayout.getHeight(10))))),
                ),
              ],
            ),
          ),
          /*shows the bottom orange card*/
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        AppLayout.getHeight(isColor == null ? 10 : 0)),
                    bottomRight: Radius.circular(
                        AppLayout.getHeight(isColor == null ? 10 : 0)))),
            padding: EdgeInsets.all(AppLayout.getHeight(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firsttext: ticket['date'],
                      secondtext: 'DATE',
                      alignment: CrossAxisAlignment.start,
                      isColor: isColor,
                    ),
                    AppColumnLayout(
                      firsttext: ticket['departure_time'],
                      secondtext: 'Departure time',
                      alignment: CrossAxisAlignment.center,
                      isColor: isColor,
                    ),
                    AppColumnLayout(
                      firsttext: ticket['number'].toString(),
                      secondtext: 'Number',
                      alignment: CrossAxisAlignment.center,
                      isColor: isColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget linebuild(double x, isColor) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / x).floor(),
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
