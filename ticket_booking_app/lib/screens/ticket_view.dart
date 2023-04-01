import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/utils/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket,this.isColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      padding: EdgeInsets.only(
        right: AppLayout.getWidth(15),
      ),
      child: Column(
        children: [
          /*shows the blue part of the card*/
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF526799),
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
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    ThickContainer(),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(height: AppLayout.getHeight(24), child: linebuild(6)),
                      Center(
                        child: Transform.rotate(
                          angle: AppLayout.getHeight(1.5),
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ])),
                    ThickContainer(),
                    Expanded(child: Container()),
                    Text(
                      ticket['to']['code'],
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket['from']['name'],
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
                    ),
                    Text(
                      ticket['flying_time'],
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
                    ),
                    Text(
                      ticket['to']['name'],
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
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
         
            decoration: BoxDecoration(color: Styles.orangeColor),
            child: Row(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(15),
                  width:AppLayout.getWidth(10),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppLayout.getHeight(10)),
                              bottomRight: Radius.circular(AppLayout.getHeight(10))))),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12)),
                    child: linebuild(AppLayout.getHeight(15)),
                  ),
                ),
                SizedBox(
                  height: AppLayout.getHeight(15),
                  width:AppLayout.getWidth(10),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeight(10)),
                              bottomLeft: Radius.circular(AppLayout.getHeight(10))))),
                ),
              ],
            ),
          ),
          /*shows the bottom orange card*/
          Container(
            decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                    bottomRight: Radius.circular(AppLayout.getHeight(10)))),
            padding: EdgeInsets.all(AppLayout.getHeight(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          ticket['date'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Gap(5),
                        Text(
                          'DATE',
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          ticket['departure_time'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          'Departure time',
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          ticket['number'].toString(),
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Gap(5),
                        Text(
                          'Number',
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
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

  Widget linebuild(double x) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / x).floor(),
            (index) => SizedBox(
              width:AppLayout.getWidth(3),
              height: AppLayout.getHeight(1),
              child:
                  DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
            ),
          ),
        );
      },
    );
  }
}
