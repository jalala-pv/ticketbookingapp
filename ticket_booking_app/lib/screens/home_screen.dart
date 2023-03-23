import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgcolor,
        body: ListView(
          children: [
            Gap(40),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              style: Styles.headlineStyle3,
                            ),
                            Gap(5),
                            Text(
                              'Book Tickets',
                              style: Styles.headlineStyle1,
                            )
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/img_1.png'))),
                        )
                      ],
                    ),
                    Gap(25),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              FluentSystemIcons.ic_fluent_search_regular,
                              color: Color(0xFFBFC205),
                            ),
                            Text(
                              'Search',
                              style: Styles.headlineStyle4,
                            )
                          ],
                        ),
                      ),
                    ),
                    Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming Flights',
                          style: Styles.headlineStyle2,
                        ),
                        InkWell(
                            onTap: () {
                              print('You are tapped');
                            },
                            child: Text(
                              'View All',
                              style: Styles.textStyle
                                  .copyWith(color: Styles.primaryColor),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            TicketView()
          ],
        ));
  }
}
