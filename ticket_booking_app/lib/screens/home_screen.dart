import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
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
                    
                  ),
                  
                ],
              ),
            )
          ],
        ));
  }
}
