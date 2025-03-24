import 'package:ewallet_project_app/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfileItems extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const ProfileItems({
    super.key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            Image.asset(
              iconUrl,
              width: 24,
            ),
            const SizedBox(
              width: 14,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ],
        ),
      ),
    );
  }
}
