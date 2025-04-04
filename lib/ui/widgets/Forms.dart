import 'package:ewallet_project_app/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? textEditingController;
  final bool isShowTitle;

  const CustomFormField(
      {super.key,
      required this.title,
      this.obscureText = false,
      this.textEditingController,
      this.isShowTitle = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: medium),
          ),
        if (isShowTitle)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: obscureText,
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: !isShowTitle ? title : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
