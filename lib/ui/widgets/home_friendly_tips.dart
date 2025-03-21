import 'package:ewallet_project_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeFriendlyTips extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;

  const HomeFriendlyTips(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 176,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColor),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadiusDirectional.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          )
        ],
      ),
    );
  }
}
