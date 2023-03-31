import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Styles.bgcolor ,
      body:ListView(
        children: [
          Text('What Are You Looking For')
        ],
      ),
    );
  }
}