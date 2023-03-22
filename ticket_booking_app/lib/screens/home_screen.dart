import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFeeedf2),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [Text('Good Morning')],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        )),
                        child: Image.asset(
                          'assets/images/img_1.png',
                          width: 50,
                          height: 50,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
