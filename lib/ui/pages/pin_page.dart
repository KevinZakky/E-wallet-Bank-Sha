import 'package:ewallet_project_app/shared/theme.dart';
import 'package:ewallet_project_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatelessWidget {
  const PinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha Pin',
                style:
                    whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: '*',
                  style: whiteTextStyle.copyWith(
                      fontSize: 36, fontWeight: medium, letterSpacing: 16),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: greyColor))),
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
                    onTap: () {},
                  ),
                  CustomNumberButton(
                    num: '2',
                    onTap: () {},
                  ),
                  CustomNumberButton(
                    num: '3',
                    onTap: () {},
                  ),
                  CustomNumberButton(
                    num: '4',
                    onTap: () {},
                  ),
                  CustomNumberButton(
                    num: '5',
                    onTap: () {},
                  ),
                  CustomNumberButton(
                    num: '6',
                    onTap: () {},
                  ),
                  CustomNumberButton(
                    num: '7',
                    onTap: () {},
                  ),
                  CustomNumberButton(
                    num: '8',
                    onTap: () {},
                  ),
                  CustomNumberButton(
                    num: '9',
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomNumberButton(
                    num: '0',
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
