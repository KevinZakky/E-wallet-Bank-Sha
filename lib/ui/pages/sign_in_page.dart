import 'package:ewallet_project_app/shared/theme.dart';
import 'package:ewallet_project_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 100, bottom: 100),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Sign In &\nGrow Your Finance',
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle.copyWith(fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomeFilledButton(
                  title: 'Sign In',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 50,
                ),
                CustomTextButton(
                  title: 'Create New Account',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
