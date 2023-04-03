import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/widgets/Column_Layout.dart';
import 'package:ticket_booking_app/utils/widgets/line_build.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headlineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    'New-York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(5),
                          vertical: AppLayout.getHeight(5),
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getWidth(100)),
                          color: Color(0xFFFEF4F3),
                        ),
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(),
                                  color: Color(0xFF526799),
                                ),
                                child: Icon(
                                  FluentSystemIcons.ic_fluent_shield_filled,
                                  color: Colors.white,
                                  size: 15,
                                )),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Premium Status',
                              style: TextStyle(
                                  color: Color(0xFF526799),
                                  fontWeight: FontWeight.w600),
                            ),
                            Gap(AppLayout.getHeight(5)),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('You are tapped');
                    },
                    child: Text('Edit',
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300)),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Divider(
            color: Colors.grey.shade400,
            height: 1,
          ),
          Gap(AppLayout.getHeight(20)),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getWidth(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        )),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'You\'ve 150 flights in a year',
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -50,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: Color(0xFF264cd2),
                      ),
                      color: Colors.transparent),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated miles',
            style: Styles.headlineStyle2,
          ),
          Gap(AppLayout.getHeight(25)),
          Column(
            children: [
              Text(
                '192802',
                style: TextStyle(
                    fontSize: 45,
                    color: Styles.TextColor,
                    fontWeight: FontWeight.w600),
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles secured',
                    style: Styles.headlineStyle4.copyWith(fontSize: 16),
                  ),
                  Text(
                    '23 May 2021',
                    style: Styles.headlineStyle4.copyWith(fontSize: 16),
                  )
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              Divider(
                color: Colors.grey.shade500,
                height: 1,
              ),
              Gap(AppLayout.getHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firsttext: '23 042',
                    secondtext: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumnLayout(
                    firsttext: 'Airline CO',
                    secondtext: 'Recieved from',
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              linebuild(
                lines: 15,
                isColor: true,
              ),
              Gap(AppLayout.getHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firsttext: '24',
                    secondtext: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumnLayout(
                    firsttext: 'MCDonal\'s',
                    secondtext: 'Recieved from',
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              linebuild(
                lines: 15,
                isColor: true,
              ),
              Gap(AppLayout.getHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firsttext: '52 340',
                    secondtext: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumnLayout(
                    firsttext: 'Exuma',
                    secondtext: 'Recieved from',
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              Center(
                child: Text(
                  'How to get more miles',
                  style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor, fontWeight: FontWeight.w500),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
