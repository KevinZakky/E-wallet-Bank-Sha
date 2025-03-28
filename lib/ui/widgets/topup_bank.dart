import 'package:ewallet_project_app/shared/theme.dart';
import 'package:flutter/material.dart';

class TopupBank extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isSelected;

  const TopupBank({
    super.key,
    required this.imageUrl,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: whiteColor,
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 30.11,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              Text(
                '50 mins',
                style: greyTextStyle.copyWith(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
