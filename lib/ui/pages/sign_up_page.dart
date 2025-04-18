import 'package:ewallet_project_app/shared/shared_method.dart';
import 'package:ewallet_project_app/shared/theme.dart';
import 'package:ewallet_project_app/ui/widgets/Forms.dart';
import 'package:ewallet_project_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool validate() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 80, bottom: 70),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Join Us To Unlock\nYour Growth',
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
                CustomFormField(
                  title: 'Full Name',
                  textEditingController: nameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'Email Address',
                  textEditingController: emailController,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'Password',
                  obscureText: true,
                  textEditingController: passwordController,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    if (validate()) {
                      Navigator.pushNamed(context, '/sign-up-set-profile');
                    } else {
                      showCustomSnackBar(
                          context, 'Semua form field harus terisi!');
                    }
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                CustomTextButton(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
