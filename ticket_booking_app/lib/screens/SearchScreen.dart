import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/widgets/Icon_text_widget.dart';
import 'package:ticket_booking_app/utils/widgets/double_text_widget.dart';

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
          Container(
            padding: EdgeInsets.all(3.5),
            child: Row(
              children: [
                /*airline tickets*/
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  width: AppLayout.getWidth(175),
                  child: Center(child: Text('Airline tickets')),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.white),
                ),
                /*hotels*/
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  width: AppLayout.getWidth(175),
                  child: Center(child: Text('Hotels')),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.transparent),
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(50),
                ),
                color: Color(0xFFF4F6FD)),
          ),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 51, 33, 243),
            borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
          ),
          child: Center(child: Text('Find tickets',style: Styles.textStyle.copyWith(color: Colors.white),)),
        ),
          Gap(AppLayout.getHeight(15)),
   AppDoubleTextWidget(BigText: 'Upcoming Flights', SmallText: 'View All'),
          Gap(AppLayout.getHeight(25)),
   Row(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
          
        ),
        child: Column(
          children: [
            Container(width:AppLayout.getWidth(190),
            height:AppLayout.getHeight(200),child: Image.asset('assets/images/sit.jpg',fit: BoxFit.cover,),decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppLayout.getHeight(200))),)
          ],
        ),
      )
    ],
   )
        ],
      ),
    );
  }
}
