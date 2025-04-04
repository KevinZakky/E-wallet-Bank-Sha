import 'package:ewallet_project_app/shared/theme.dart';
import 'package:ewallet_project_app/ui/widgets/Forms.dart';
import 'package:ewallet_project_app/ui/widgets/buttons.dart';
import 'package:ewallet_project_app/ui/widgets/transfer_recently.dart';
import 'package:ewallet_project_app/ui/widgets/transfer_result.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecently()
          buildResult(),
          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget buildRecently() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          TransferRecently(
            imageUrl: 'assets/img_friend1.png',
            name: 'Yonna Jie',
            username: 'Yoenna',
            isVerified: true,
          ),
          TransferRecently(
            imageUrl: 'assets/img_friend3.png',
            name: 'John Hi',
            username: 'jhi',
          ),
          TransferRecently(
            imageUrl: 'assets/img_friend2.png',
            name: 'Masayoshi',
            username: 'form',
          )
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Wrap(
        spacing: 17,
        runSpacing: 17,
        children: [
          TransferResult(
            imageUrl: 'assets/img_friend1.png',
            name: 'Yonna Jie',
            username: 'yoenna',
            isVerified: true,
          ),
          TransferResult(
            imageUrl: 'assets/img_friend2.png',
            name: 'Yonne Ka',
            username: 'yoenyu',
            isVerified: false,
            isSelected: true,
          ),
        ],
      ),
    );
  }
}
