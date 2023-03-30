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
      padding: const EdgeInsets.only(right: 17, top: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.shade400, blurRadius: 5, spreadRadius: 2),
        ], borderRadius: BorderRadius.circular(24), color: Styles.primaryColor),
        width: size.width * 0.6,
        height: 350,
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
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
