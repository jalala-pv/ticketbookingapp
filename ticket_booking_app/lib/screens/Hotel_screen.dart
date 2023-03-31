import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
final Map<String,dynamic>hotel;
  const HotelScreen({Key?key,required this.hotel}):super(key:key);

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);
    return Padding(
      padding:  EdgeInsets.only(right: AppLayout.getWidth(17), top: AppLayout.getHeight(5)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(17)),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.shade400, blurRadius: AppLayout.getWidth(5), spreadRadius:  AppLayout.getWidth(2)),
        ], borderRadius: BorderRadius.circular( AppLayout.getHeight(24)), color: Styles.primaryColor),
        width: size.width * 0.6,
        height:  AppLayout.getHeight(350),
        child: Column(
          children: [
            Container(
              height:AppLayout.getHeight(180) ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/${hotel['image']}'),
                      fit: BoxFit.cover)),
            ),
            Gap(10),
            Text(
              hotel['place'],
              style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
            ),
            Gap(5),
            Text(
              hotel['destination'],
              style: Styles.headlineStyle3.copyWith(color: Colors.white),
            ),
              Gap(5),
                Text(
              '\$ ${hotel['price']}/night',
              style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),
            ),
          ],
        ),
      ),
    );
  }
}
