import 'package:ewallet_project_app/shared/theme.dart';
import 'package:ewallet_project_app/ui/widgets/data_provider_items.dart';
import 'package:flutter/material.dart';

class DataProviverPage extends StatelessWidget {
  const DataProviverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beli Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance: Rp 180.000.000',
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          DataProviderItems(
            providerName: 'Telkomsel',
            imageUrl: 'assets/img_provider_telkomsel.png',
            isSelected: true,
          ),
          DataProviderItems(
              providerName: 'Indosat Ooredoo',
              imageUrl: 'assets/img_provider_indosat.png'),
          DataProviderItems(
              providerName: 'Singtel ID',
              imageUrl: 'assets/img_provider_singtel.png'),
        ],
      ),
    );
  }
}
