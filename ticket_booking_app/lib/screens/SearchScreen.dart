import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/widgets/Icon_text_widget.dart';
import 'package:ticket_booking_app/utils/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/utils/widgets/ticket_tabs.dart';

import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\n you looking for ?',
            style: Styles.headlineStyle1
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          AppTicketTabs(leftTExt: 'Airline tickets', rightText: 'Hotels'),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 33, 243),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
            child: Center(
                child: Text(
              'Find tickets',
              style: Styles.textStyle.copyWith(color: Colors.white),
            )),
          ),
          Gap(AppLayout.getHeight(15)),
          AppDoubleTextWidget(
              BigText: 'Upcoming Flights', SmallText: 'View All'),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(AppLayout.getWidth(15)),
                width: AppLayout.getWidth(190),
                height: AppLayout.getHeight(400),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      width: AppLayout.getWidth(190),
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(20)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/sit.jpg'))),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      '20% discount on the early booking of the flight.Don\'t miss out this chance',
                      style: Styles.headlineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(15),
                            vertical: AppLayout.getHeight(15)),
                        width: AppLayout.getWidth(150),
                        height: AppLayout.getHeight(175),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \n for survey',
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(15)),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: Color(0xFF189999),
                              ),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    width: AppLayout.getWidth(150),
                    height: AppLayout.getHeight(200),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Take love',
                            style: Styles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                            textAlign: TextAlign.center),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(text: '😙', style: TextStyle(fontSize: 20)),
                          TextSpan(text: '😍', style: TextStyle(fontSize: 40)),
                          TextSpan(text: '😘', style: TextStyle(fontSize: 20)),
                        ]))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
