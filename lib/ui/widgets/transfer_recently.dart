import 'package:ewallet_project_app/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecently extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final bool isVerified;

  const TransferRecently(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.username,
      this.isVerified = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColor),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 14),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '@$username',
                style: greyTextStyle.copyWith(fontSize: 12),
              ),
            ],
          ),
          const Spacer(),
          if (isVerified)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  size: 14,
                  color: greenColor,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Verified',
                  style:
                      greenTextStyle.copyWith(fontSize: 11, fontWeight: medium),
                ),
              ],
            )
        ],
      ),
    );
  }
}
