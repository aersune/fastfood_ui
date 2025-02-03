import 'package:flutter/material.dart';

import '../../../../styles/text_style.dart';


class ProductSubInfo extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const ProductSubInfo({super.key, required this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image, scale: 1.7,),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppStyle.light.copyWith(fontSize: 14),),
            Text(subtitle, style: AppStyle.normal.copyWith(fontSize: 16),),
          ],
        )
      ],
    );
  }
}
