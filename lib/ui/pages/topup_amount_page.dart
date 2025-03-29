import 'package:ewallet_project_app/shared/theme.dart';
import 'package:ewallet_project_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupAmountPage extends StatefulWidget {
  const TopupAmountPage({super.key});

  @override
  State<TopupAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopupAmountPage> {
  TextEditingController amountController = TextEditingController(text: '0');

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }

    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Total Amount',
              style:
                  whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: amountController,
                cursorColor: greyColor,
                enabled: false,
                style:
                    whiteTextStyle.copyWith(fontSize: 36, fontWeight: medium),
                decoration: InputDecoration(
                  prefix: Text(
                    'Rp',
                    style: whiteTextStyle.copyWith(
                        fontSize: 36, fontWeight: medium),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: greyColor),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              CustomNumberButton(
                num: '1',
                onTap: () {
                  addAmount('1');
                },
              ),
              CustomNumberButton(
                num: '2',
                onTap: () {
                  addAmount('2');
                },
              ),
              CustomNumberButton(
                num: '3',
                onTap: () {
                  addAmount('3');
                },
              ),
              CustomNumberButton(
                num: '4',
                onTap: () {
                  addAmount('4');
                },
              ),
              CustomNumberButton(
                num: '5',
                onTap: () {
                  addAmount('5');
                },
              ),
              CustomNumberButton(
                num: '6',
                onTap: () {
                  addAmount('6');
                },
              ),
              CustomNumberButton(
                num: '7',
                onTap: () {
                  addAmount('7');
                },
              ),
              CustomNumberButton(
                num: '8',
                onTap: () {
                  addAmount('8');
                },
              ),
              CustomNumberButton(
                num: '9',
                onTap: () {
                  addAmount('9');
                },
              ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              CustomNumberButton(
                num: '0',
                onTap: () {
                  addAmount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: numberBackgroundColor),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomFilledButton(title: 'Checkout Now'),
          const SizedBox(
            height: 25,
          ),
          CustomTextButton(title: 'Terms & Conditions'),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
