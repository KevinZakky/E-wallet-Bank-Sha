import 'package:ewallet_project_app/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItems extends StatelessWidget {
  final int amount;
  final int price;
  final bool isSelected;

  const PackageItems({
    super.key,
    required this.amount,
    required this.price,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 173,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${amount}GB',
            style: blackTextStyle.copyWith(fontSize: 32, fontWeight: medium),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Rp $price',
            style: greyTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
