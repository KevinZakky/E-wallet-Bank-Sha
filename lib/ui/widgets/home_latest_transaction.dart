import 'package:ewallet_project_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeLatestTransaction extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String date;
  final String value;

  const HomeLatestTransaction(
      {super.key,
      required this.iconUrl,
      required this.title,
      required this.date,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 48,
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
                Text(
                  date,
                  style: greyTextStyle.copyWith(fontSize: 12),
                )
              ],
            ),
          ),
          Text(
            value,
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          )
        ],
      ),
    );
  }
}
