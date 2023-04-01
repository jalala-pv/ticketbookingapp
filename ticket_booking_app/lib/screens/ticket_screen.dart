import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
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
                child: TicketView(ticket:ticketList[0],isColor: true, ))
           
            ],
          ),
        ],
      ),
    );
  }
}
