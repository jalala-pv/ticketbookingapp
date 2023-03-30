import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/utils/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
 final Map<String,dynamic> ticket;
   const TicketView({Key?key,required this.ticket}):super(key:key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.85,
      height: 230,
      padding: EdgeInsets.only(right: 15,),
      child: Column(
        children: [
          /*shows the blue part of the card*/
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'NYC',
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    ThickContainer(),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(height: 24, child: linebuild(6)),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
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
                      'LDN',
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
                      'New-York',
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
                    ),
                    Text(
                      '8H 30M',
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
                    ),
                    Text(
                      'London',
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
            // height: 80,
            // width: size.width,
            decoration: BoxDecoration(color: Styles.orangeColor),
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)))),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: linebuild(15),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)))),
                ),
              ],
            ),
          ),
          /*shows the bottom orange card*/
          Container(
            decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '1 MAY',
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
                          '8.00AM',
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Gap(5),
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
                          '23',
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
              width: 3,
              height: 1,
              child:
                  DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
            ),
          ),
        );
      },
    );
  }
}
