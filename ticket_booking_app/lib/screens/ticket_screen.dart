import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/widgets/line_build.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../utils/widgets/Column_Layout.dart';
import '../utils/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headlineStyle1
                    .copyWith(fontSize: AppLayout.getHeight(35)),
              ),
              Gap(AppLayout.getHeight(20)),
              AppTicketTabs(leftTExt: 'Upcoming', rightText: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  )),
              SizedBox(
                height: 1,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getWidth(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firsttext: 'Flutter DB',
                          secondtext: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firsttext: '5221 364869',
                          secondtext: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    linebuild(
                      lines: 15,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firsttext: '0055 444 77147',
                          secondtext: 'B2SG28',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        Gap(AppLayout.getHeight(20)),
                        AppColumnLayout(
                          firsttext: 'Number of E-ticket',
                          secondtext: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    linebuild(
                      lines: 15,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' ***2462',
                                  style: Styles.headlineStyle3,
                                )
                              ],
                            ),
                            Gap(5),
                            Text(
                              'Payment method',
                              style: Styles.headlineStyle4,
                            )
                          ],
                        ),
                        AppColumnLayout(
                          firsttext: '\$249.99',
                          secondtext: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                  ],
                ),
              ),
              /*Bar code */
              BarcodeWidget(
                data: 'https://github.com/martinovovo',
                barcode: Barcode.code128(),
                 drawText: false,
                 color: Styles.TextColor,
                width: double.infinity,
                height: 70,
              )
            ],
          ),
        ],
      ),
    );
  }
}
